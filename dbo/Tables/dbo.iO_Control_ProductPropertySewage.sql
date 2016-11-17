CREATE TABLE [dbo].[iO_Control_ProductPropertySewage]
(
[XRTs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_Type] [int] NULL,
[XRTs_IDUser] [int] NULL,
[XRTs_SecurityValue] [int] NULL,
[XRTs_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTs_IDARMclassic] [int] NULL,
[XRTs_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertySewage] ADD CONSTRAINT [PK_iO_Control_ProductPropertySewage] PRIMARY KEY CLUSTERED  ([XRTs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
