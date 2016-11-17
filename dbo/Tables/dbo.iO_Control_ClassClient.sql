CREATE TABLE [dbo].[iO_Control_ClassClient]
(
[XCY_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCY_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCY_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_Address] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_Contact] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_EODSQL] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_Note] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_Process] [int] NULL,
[XCY_Type] [int] NULL,
[XCY_IDUser] [int] NULL,
[XCY_IDARMclassic] [int] NULL,
[XCY_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_AlternateDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_B2BKeyword] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_SecurityValue] [int] NULL,
[XCY_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_RunDedupe] [int] NULL,
[XCY_IDLink_ContactMobile] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_ContactEMail] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_ContactHome] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_ContactWork] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_DedupeOptions] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_DedupeMode] [int] NULL,
[XCY_IDLink_ContactDirect] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCY_IDLink_ContactFax] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassClient] ADD CONSTRAINT [PK_iO_Control_ClientType] PRIMARY KEY CLUSTERED  ([XCY_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassClient] ADD CONSTRAINT [FK_iO_Control_ClassClient_iO_Control_ClassClient] FOREIGN KEY ([XCY_ID]) REFERENCES [dbo].[iO_Control_ClassClient] ([XCY_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassClient', 'COLUMN', N'XCY_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassClient', 'COLUMN', N'XCY_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassClient', 'COLUMN', N'XCY_Ownership'
GO
