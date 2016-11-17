CREATE TABLE [dbo].[iO_Control_Generic]
(
[XGA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XGA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XGA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XGA_IDLink_XSCc] [int] NULL,
[XGA_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XGA_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XGA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XGA_IDUser] [int] NULL,
[XGA_Type] [int] NULL,
[XGA_SecurityValue] [int] NULL,
[XGA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XGA_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Generic] ADD CONSTRAINT [PK_iO_Control_Generic] PRIMARY KEY CLUSTERED  ([XGA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
