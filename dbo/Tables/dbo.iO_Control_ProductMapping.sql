CREATE TABLE [dbo].[iO_Control_ProductMapping]
(
[XRPm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_IDLink_XSCc] [int] NULL,
[XRPm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_Type] [int] NULL,
[XRPm_IDUser] [int] NULL,
[XRPm_SecurityValue] [int] NULL,
[XRPm_Order] [int] NULL,
[XRPm_IsActive] [bit] NULL,
[XRPm_KeyIDForeign] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_Brand] [int] NULL,
[XRPm_IsFixed] [bit] NULL,
[XRPm_IsHighRatio] [bit] NULL,
[XRPm_IsInsured] [bit] NULL,
[XRPm_IsConstruction] [bit] NULL,
[XRPm_IsLOCPrimary] [bit] NULL,
[XRPm_IsLOCSecondary] [bit] NULL,
[XRPm_IsNoFrills] [bit] NULL,
[XRPm_IsIO] [bit] NULL,
[XRPm_IsDiscount] [bit] NULL,
[XRPm_IsCashback] [bit] NULL,
[XRPm_Term] [int] NULL,
[XRPm_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductMapping] ADD CONSTRAINT [PK_iO_Control_Mapping] PRIMARY KEY CLUSTERED  ([XRPm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMapping_9_1700253162__K7_12_18_24] ON [dbo].[iO_Control_ProductMapping] ([XRPm_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
