CREATE TABLE [dbo].[iO_Control_DocumentMaster]
(
[XDT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_IDLink_XSCc] [int] NULL,
[XDT_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_Type] [int] NULL,
[XDT_IDUser] [int] NULL,
[XDT_IDARMclassic] [int] NULL,
[XDT_IDQueue] [int] NULL,
[XDT_DocLinkType] [int] NULL,
[XDT_Extension] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_UNCPath] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_SecurityValue] [int] NULL,
[XDT_Base64Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDT_Editable] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_DocumentMaster] ADD CONSTRAINT [PK_iO_Control_DocumentMaster] PRIMARY KEY CLUSTERED  ([XDT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_DocumentMaster', 'COLUMN', N'XDT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_DocumentMaster', 'COLUMN', N'XDT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_DocumentMaster', 'COLUMN', N'XDT_Ownership'
GO
