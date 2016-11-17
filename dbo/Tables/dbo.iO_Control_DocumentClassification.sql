CREATE TABLE [dbo].[iO_Control_DocumentClassification]
(
[XDTc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XDTc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_Type] [int] NULL,
[XDTc_IDUser] [int] NULL,
[XDTc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XDTc_SecurityValue] [int] NULL,
[XDTc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_DocumentClassification] ADD CONSTRAINT [PK_iO_Control_DocumentClassification] PRIMARY KEY CLUSTERED  ([XDTc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
