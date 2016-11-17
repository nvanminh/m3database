CREATE TABLE [dbo].[iO_Control_FormControl]
(
[XFRC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFRC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFRC_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_SeqNo] [int] NULL,
[XFRC_ControlType] [int] NULL,
[XFRC_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_Parent] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_XML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FormControl] ADD CONSTRAINT [PK_iO_Control_FormControl] PRIMARY KEY CLUSTERED  ([XFRC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FormControl] ON [dbo].[iO_Control_FormControl] ([XFRC_IDLink_XFRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FormControl_10] ON [dbo].[iO_Control_FormControl] ([XFRC_IDLink_XFRM], [XFRC_ControlType], [XFRC_Parent], [XFRC_ID], [XFRC_SeqNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FormControl_1] ON [dbo].[iO_Control_FormControl] ([XFRC_IDLink_XFRM], [XFRC_Name]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FormControl_11] ON [dbo].[iO_Control_FormControl] ([XFRC_IDLink_XFRM], [XFRC_Parent], [XFRC_ControlType], [XFRC_ID], [XFRC_SeqNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FormControl', 'COLUMN', N'XFRC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FormControl', 'COLUMN', N'XFRC_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FormControl', 'COLUMN', N'XFRC_Version'
GO
