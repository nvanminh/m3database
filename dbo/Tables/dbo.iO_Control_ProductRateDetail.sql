CREATE TABLE [dbo].[iO_Control_ProductRateDetail]
(
[XRRd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRd_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRd_DateEffectiveFrom] [datetime] NULL,
[XRRd_Rate] [float] NULL,
[XRRd_High] [float] NULL,
[XRRd_DateEffectiveInstallment] [datetime] NULL,
[XRRd_DateEffectiveTo] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateDetail] ADD CONSTRAINT [PK_iO_Control_ProductRateDetail] PRIMARY KEY CLUSTERED  ([XRRd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProductRateDetail] ON [dbo].[iO_Control_ProductRateDetail] ([XRRd_IDLink_XRRm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateDetail_6_821577965__K5_K1_K6_7] ON [dbo].[iO_Control_ProductRateDetail] ([XRRd_IDLink_XRRm], [XRRd_ID], [XRRd_DateEffectiveFrom]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateDetail', 'COLUMN', N'XRRd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateDetail', 'COLUMN', N'XRRd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateDetail', 'COLUMN', N'XRRd_Ownership'
GO
