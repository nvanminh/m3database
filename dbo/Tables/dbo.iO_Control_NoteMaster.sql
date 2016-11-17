CREATE TABLE [dbo].[iO_Control_NoteMaster]
(
[XNT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XNT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XNT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_XSCc] [int] NULL,
[XNT_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_Form] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_IDLink_Field] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_Title] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_Type] [int] NULL,
[XNT_IDUser] [int] NULL,
[XNT_IDARMclassic] [int] NULL,
[XNT_SecurityValue] [int] NULL,
[XNT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_Note_2] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_Title_2] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNT_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_NoteMaster] ADD CONSTRAINT [PK_iO_Control_NoteType] PRIMARY KEY CLUSTERED  ([XNT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_NoteMaster_9_697769543__K1_11] ON [dbo].[iO_Control_NoteMaster] ([XNT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_NoteMaster] ON [dbo].[iO_Control_NoteMaster] ([XNT_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_NoteMaster', 'COLUMN', N'XNT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_NoteMaster', 'COLUMN', N'XNT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_NoteMaster', 'COLUMN', N'XNT_Ownership'
GO
