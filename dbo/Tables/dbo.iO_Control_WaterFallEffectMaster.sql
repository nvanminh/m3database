CREATE TABLE [dbo].[iO_Control_WaterFallEffectMaster]
(
[XWFEm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWFEm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEm_IDLink_XSCc] [int] NULL,
[XWFEm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEm_Type] [int] NULL,
[XWFEm_IDUser] [int] NULL,
[XWFEm_SecurityValue] [int] NULL,
[XWFEm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WaterFallEffectMaster] ADD CONSTRAINT [PK_iO_Control_WaterFallEffectMaster] PRIMARY KEY CLUSTERED  ([XWFEm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
