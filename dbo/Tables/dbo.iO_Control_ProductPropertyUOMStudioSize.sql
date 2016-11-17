CREATE TABLE [dbo].[iO_Control_ProductPropertyUOMStudioSize]
(
[XRTus_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTus_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTus_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTus_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTus_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTus_IDLink_XSCc] [int] NULL,
[XRTus_Type] [int] NULL,
[XRTus_IDUser] [int] NULL,
[XRTus_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTus_SecurityValue] [int] NULL,
[XRTus_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTus_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyUOMStudioSize] ADD CONSTRAINT [PK_iO_Control_ProductPropertyUOMStudioSize] PRIMARY KEY CLUSTERED  ([XRTus_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
