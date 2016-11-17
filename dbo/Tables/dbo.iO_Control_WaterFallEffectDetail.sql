CREATE TABLE [dbo].[iO_Control_WaterFallEffectDetail]
(
[XWFEd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWFEd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_IDLink_XWFEm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWFEd_Type] [int] NULL,
[XWFEd_IDUser] [int] NULL,
[XWFEd_SeqNumber] [int] NULL,
[XWFEd_SecurityValue] [int] NULL,
[XWFEd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WaterFallEffectDetail] ADD CONSTRAINT [PK_iO_Control_WaterFallEffectDetail] PRIMARY KEY CLUSTERED  ([XWFEd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WaterFallEffectDetail] ON [dbo].[iO_Control_WaterFallEffectDetail] ([XWFEd_IDLink_XWFEm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
