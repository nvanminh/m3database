CREATE TABLE [dbo].[iO_Control_ProductPropertyStyle]
(
[XRTl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_Type] [int] NULL,
[XRTl_IDUser] [int] NULL,
[XRTl_SecurityValue] [int] NULL,
[XRTl_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTl_IDARMclassic] [int] NULL,
[XRTl_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyStyle] ADD CONSTRAINT [PK_iO_Control_ProductPropertyStyle] PRIMARY KEY CLUSTERED  ([XRTl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
