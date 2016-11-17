CREATE TABLE [dbo].[iO_Client_UniqueIdentifier]
(
[CUI_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUI_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUI_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IDLink_XDI] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_DocumentNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IssueDate] [datetime] NULL,
[CUI_ExpiryDate] [datetime] NULL,
[CUI_PlaceOfIssue_State] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_RelatesTo] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_DocumentAddress] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_DateOfBirth] [datetime] NULL,
[CUI_ABNNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_ACNNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_IDUser] [int] NULL,
[CUI_Type] [int] NULL,
[CUI_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CUI_CountryName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUI_Verified] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_UniqueIdentifier] ADD CONSTRAINT [PK_iO_Client_UniqueIdentifier] PRIMARY KEY CLUSTERED  ([CUI_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_UniqueIdentifier] ON [dbo].[iO_Client_UniqueIdentifier] ([CUI_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_UniqueIdentifier_1] ON [dbo].[iO_Client_UniqueIdentifier] ([CUI_IDLink_XDI]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_UniqueIdentifier', 'COLUMN', N'CUI_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_UniqueIdentifier', 'COLUMN', N'CUI_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_UniqueIdentifier', 'COLUMN', N'CUI_Ownership'
GO
