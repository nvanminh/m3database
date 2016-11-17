CREATE TABLE [dbo].[iO_Document_MasterReference]
(
[DMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_XSYSdoc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_CreatedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_IDLink_VerifiedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DMR_Type] [int] NULL,
[DMR_DocLinkType] [int] NULL,
[DMR_IDUser] [int] NULL,
[DMR_IDQueue] [int] NULL,
[DMR_DateCreated] [datetime] NULL,
[DMR_UNCPath] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_FileOriginalName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_FileDisplayName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_FileDisplayExtension] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_FileSubject] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_FlagPrint] [bit] NULL,
[DMR_Attached] [bit] NULL,
[DMR_VerifiedFlag] [int] NULL,
[DMR_VerifiedDate] [datetime] NULL,
[DMR_SecurityValue] [int] NULL,
[DMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_DateModified] [datetime] NULL,
[DMR_ExternalAccessFlag] [int] NULL,
[DMR_ExternalAccessExpiryDate] [datetime] NULL,
[DMR_KeyWords] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMR_Emailed] [bit] NULL,
[DMR_EmailAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_MasterReference] ADD CONSTRAINT [PK_iO_Client_DocumentDetail] PRIMARY KEY CLUSTERED  ([DMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Document_MasterReference] ON [dbo].[iO_Document_MasterReference] ([DMR_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Document_MasterReference', 'COLUMN', N'DMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Document_MasterReference', 'COLUMN', N'DMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Document_MasterReference', 'COLUMN', N'DMR_Ownership'
GO
