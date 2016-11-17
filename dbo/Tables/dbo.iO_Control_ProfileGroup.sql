CREATE TABLE [dbo].[iO_Control_ProfileGroup]
(
[XPFg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_XPF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDUser] [int] NULL,
[XPFg_Type] [int] NULL,
[XPFg_DisplayNumber] [int] NULL,
[XPFg_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_UseWorkFlow] [bit] NULL,
[XPFg_TabHeading] [int] NULL,
[XPFg_CheckFor] [int] NULL,
[XPFg_DisplayName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_ReadOnly] [bit] NULL,
[XPFg_ActionMenu] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProfileGroup] ADD CONSTRAINT [PK_iO_Control_ProfileGroup] PRIMARY KEY CLUSTERED  ([XPFg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProfileGroup_10] ON [dbo].[iO_Control_ProfileGroup] ([XPFg_IDLink_XPF], [XPFg_IDLink_XFRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileGroup', 'COLUMN', N'XPFg_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileGroup', 'COLUMN', N'XPFg_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileGroup', 'COLUMN', N'XPFg_Ownership'
GO
