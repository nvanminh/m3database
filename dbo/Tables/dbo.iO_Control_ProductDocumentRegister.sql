CREATE TABLE [dbo].[iO_Control_ProductDocumentRegister]
(
[XDRr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDRr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_IDLink_XSCc] [int] NULL,
[XDRr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_Type] [int] NULL,
[XDRr_IDUser] [int] NULL,
[XDRr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_SecurityValue] [int] NULL,
[XDRr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDRr_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductDocumentRegister] ADD CONSTRAINT [PK_iO_Control_ProductDocumentRegister] PRIMARY KEY CLUSTERED  ([XDRr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDocumentRegister', 'COLUMN', N'XDRr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDocumentRegister', 'COLUMN', N'XDRr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDocumentRegister', 'COLUMN', N'XDRr_Ownership'
GO
