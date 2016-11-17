CREATE TABLE [dbo].[iO_Control_ProductFeature]
(
[XRFf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRFf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_IDLink_XFA] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_Type] [int] NULL,
[XRFf_IDUser] [int] NULL,
[XRFf_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFf_SecurityValue] [int] NULL,
[XRFf_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductFeature] ADD CONSTRAINT [PK_iO_Control_ProductFeature] PRIMARY KEY CLUSTERED  ([XRFf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProductFeature] ON [dbo].[iO_Control_ProductFeature] ([XRFf_IDLink_XRP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductFeature_6_1805249486__K5_K7_K1] ON [dbo].[iO_Control_ProductFeature] ([XRFf_IDLink_XRP], [XRFf_Type], [XRFf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeature', 'COLUMN', N'XRFf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeature', 'COLUMN', N'XRFf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeature', 'COLUMN', N'XRFf_Ownership'
GO
