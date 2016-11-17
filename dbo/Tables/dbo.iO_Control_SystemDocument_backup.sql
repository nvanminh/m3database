CREATE TABLE [dbo].[iO_Control_SystemDocument_backup]
(
[XSYSdoc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSdoc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_Type] [int] NULL,
[XSYSdoc_IDUser] [int] NULL,
[XSYSdoc_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_DB_Master] [bit] NULL,
[XSYSdoc_DB_Online] [bit] NULL,
[XSYSdoc_DB_DateStart] [datetime] NULL,
[XSYSdoc_DB_DateEnd] [datetime] NULL,
[XSYSdoc_SecurityValue] [int] NULL,
[XSYSdoc_Properties] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
