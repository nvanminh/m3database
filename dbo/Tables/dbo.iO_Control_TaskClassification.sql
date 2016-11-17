CREATE TABLE [dbo].[iO_Control_TaskClassification]
(
[XTKMcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKMcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKMcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMcl_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMcl_Type] [int] NULL,
[XTKMcl_IDUser] [int] NULL,
[XTKMcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMcl_SecurityValue] [int] NULL,
[XTKMcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TaskClassification] ADD CONSTRAINT [PK_iO_Control_TaskClassification] PRIMARY KEY CLUSTERED  ([XTKMcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
