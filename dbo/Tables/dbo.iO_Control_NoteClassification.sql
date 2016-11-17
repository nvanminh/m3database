CREATE TABLE [dbo].[iO_Control_NoteClassification]
(
[XNTcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XNTcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XNTcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNTcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNTcl_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNTcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNTcl_Type] [int] NULL,
[XNTcl_IDUser] [int] NULL,
[XNTcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XNTcl_SecurityValue] [int] NULL,
[XNTcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_NoteClassification] ADD CONSTRAINT [PK_iO_Control_NoteClassification] PRIMARY KEY CLUSTERED  ([XNTcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
