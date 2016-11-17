CREATE TABLE [dbo].[iO_Client_ContactName]
(
[CCN_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCN_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCN_Type] [int] NULL,
[CCN_IDUser] [int] NULL,
[CCN_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_FirmName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactWork] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactMobile] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactEMail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactFax] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactAddress] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_SecurityValue] [int] NULL,
[CCN_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactPAddress] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCN_ContactDirect] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ContactName] ADD CONSTRAINT [PK_iO_Client_ContactName] PRIMARY KEY CLUSTERED  ([CCN_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_ContactName] ON [dbo].[iO_Client_ContactName] ([CCN_IDLink_CMR]) ON [PRIMARY]
GO
