CREATE TABLE [dbo].[iO_Control_StatusClassification]
(
[XSUcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUcl_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUcl_Type] [int] NULL,
[XSUcl_IDUser] [int] NULL,
[XSUcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUcl_SecurityValue] [int] NULL,
[XSUcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StatusClassification] ADD CONSTRAINT [PK_iO_Control_StatusClassification] PRIMARY KEY CLUSTERED  ([XSUcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
