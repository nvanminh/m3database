CREATE TABLE [dbo].[iO_Control_ClientUniqueIdentifier]
(
[XDI_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDI_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDI_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_IDLink_XSCc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_IDLink_XCY] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_Type] [int] NULL,
[XDI_IDUser] [int] NULL,
[XDI_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_Unique] [bit] NULL,
[XDI_IssueDate] [bit] NULL,
[XDI_ExpiryDate] [bit] NULL,
[XDI_IssueState] [bit] NULL,
[XDI_IssueCountry] [bit] NULL,
[XDI_RelatesTo] [bit] NULL,
[XDI_DocumentAddress] [bit] NULL,
[XDI_Points] [int] NULL,
[XDI_ValidationRule] [int] NULL,
[XDI_SecurityValue] [int] NULL,
[XDI_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDI_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientUniqueIdentifier] ADD CONSTRAINT [PK_iO_Control_DocumentIdentifier] PRIMARY KEY CLUSTERED  ([XDI_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientUniqueIdentifier', 'COLUMN', N'XDI_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientUniqueIdentifier', 'COLUMN', N'XDI_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientUniqueIdentifier', 'COLUMN', N'XDI_Ownership'
GO
