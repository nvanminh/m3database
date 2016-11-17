CREATE TABLE [dbo].[iO_Control_ProductClient]
(
[XRPc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_Type] [int] NULL,
[XRPc_IDUser] [int] NULL,
[XRPc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_SecurityValue] [int] NULL,
[XRPc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPc_IDLink_Relationship] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductClient] ADD CONSTRAINT [PK_iO_Control_ProductClient] PRIMARY KEY CLUSTERED  ([XRPc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductClient_6_292964170__K8_K7_K6_K1] ON [dbo].[iO_Control_ProductClient] ([XRPc_IDLink_XLK], [XRPc_IDLink_CMR], [XRPc_IDLink_XRP], [XRPc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProductClient] ON [dbo].[iO_Control_ProductClient] ([XRPc_IDLink_XRP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductClient_6_292964170__K6_K8_K1_7] ON [dbo].[iO_Control_ProductClient] ([XRPc_IDLink_XRP], [XRPc_IDLink_XLK], [XRPc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductClient_6_292964170__K6_K9_K8_K1_7] ON [dbo].[iO_Control_ProductClient] ([XRPc_IDLink_XRP], [XRPc_Type], [XRPc_IDLink_XLK], [XRPc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
