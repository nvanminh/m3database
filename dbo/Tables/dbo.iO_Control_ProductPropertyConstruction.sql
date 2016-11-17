CREATE TABLE [dbo].[iO_Control_ProductPropertyConstruction]
(
[XRTc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTc_IDLink_XSCc] [int] NULL,
[XRTc_Type] [int] NULL,
[XRTc_IDUser] [int] NULL,
[XRTc_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTc_SecurityValue] [int] NULL,
[XRTc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTc_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyConstruction] ADD CONSTRAINT [PK_iO_Control_ProductPropertyConstruction] PRIMARY KEY CLUSTERED  ([XRTc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
