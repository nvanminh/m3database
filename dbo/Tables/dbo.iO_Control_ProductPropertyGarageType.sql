CREATE TABLE [dbo].[iO_Control_ProductPropertyGarageType]
(
[XRTgt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTgt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTgt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgt_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgt_IDLink_XSCc] [int] NULL,
[XRTgt_Type] [int] NULL,
[XRTgt_IDUser] [int] NULL,
[XRTgt_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgt_SecurityValue] [int] NULL,
[XRTgt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgt_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyGarageType] ADD CONSTRAINT [PK_iO_Control_ProductPropertyGarageType] PRIMARY KEY CLUSTERED  ([XRTgt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
