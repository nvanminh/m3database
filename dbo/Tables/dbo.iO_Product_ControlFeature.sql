CREATE TABLE [dbo].[iO_Product_ControlFeature]
(
[RCFf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCFf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFf_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFf_IDLink_XRFf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCFf_IDUser] [int] NULL,
[RCFf_Type] [int] NULL,
[RCFf_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlFeature] ADD CONSTRAINT [PK_iO_Product_ControlFeature] PRIMARY KEY CLUSTERED  ([RCFf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_ControlFeature_25_1489440380__K5_K6_K1] ON [dbo].[iO_Product_ControlFeature] ([RCFf_IDLink_RMR], [RCFf_IDLink_XRFf], [RCFf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFeature', 'COLUMN', N'RCFf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFeature', 'COLUMN', N'RCFf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFeature', 'COLUMN', N'RCFf_Ownership'
GO
