CREATE TABLE [dbo].[iO_Control_ProductRateMatrix]
(
[XRRx_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRx_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_Type] [int] NULL,
[XRRx_IDUser] [int] NULL,
[XRRx_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRx_SecurityValue] [int] NULL,
[XRRx_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateMatrix] ADD CONSTRAINT [PK_iO_Control_ProductRateMatrix] PRIMARY KEY CLUSTERED  ([XRRx_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateMatrix_6_1264723558__K6_K5] ON [dbo].[iO_Control_ProductRateMatrix] ([XRRx_IDLink_XRP], [XRRx_IDLink_XRRm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMatrix', 'COLUMN', N'XRRx_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMatrix', 'COLUMN', N'XRRx_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMatrix', 'COLUMN', N'XRRx_Ownership'
GO
