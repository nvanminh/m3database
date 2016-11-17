CREATE TABLE [dbo].[iO_Control_FeatureClassification]
(
[XFAcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFAcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_IDLink_XFA] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_Type] [int] NULL,
[XFAcl_IDUser] [int] NULL,
[XFAcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFAcl_SecurityValue] [int] NULL,
[XFAcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FeatureClassification] ADD CONSTRAINT [PK_iO_Control_FeatureClassification] PRIMARY KEY CLUSTERED  ([XFAcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
