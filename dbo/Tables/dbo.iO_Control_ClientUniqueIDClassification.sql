CREATE TABLE [dbo].[iO_Control_ClientUniqueIDClassification]
(
[XDIcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDIcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDIcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDIcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDIcl_IDLink_XDI] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDIcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDIcl_Type] [int] NULL,
[XDIcl_IDUser] [int] NULL,
[XDIcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDIcl_SecurityValue] [int] NULL,
[XDIcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientUniqueIDClassification] ADD CONSTRAINT [PK_iO_Control_ClientUniqueIDClassification] PRIMARY KEY CLUSTERED  ([XDIcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
