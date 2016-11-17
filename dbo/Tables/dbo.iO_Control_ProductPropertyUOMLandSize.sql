CREATE TABLE [dbo].[iO_Control_ProductPropertyUOMLandSize]
(
[XRTul_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTul_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTul_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTul_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTul_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTul_IDLink_XSCc] [int] NULL,
[XRTul_Type] [int] NULL,
[XRTul_IDUser] [int] NULL,
[XRTul_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTul_SecurityValue] [int] NULL,
[XRTul_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTul_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyUOMLandSize] ADD CONSTRAINT [PK_iO_Control_ProductPropertyUOMLandSize] PRIMARY KEY CLUSTERED  ([XRTul_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
