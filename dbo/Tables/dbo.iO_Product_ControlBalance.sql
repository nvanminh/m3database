CREATE TABLE [dbo].[iO_Product_ControlBalance]
(
[RCB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCB_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCB_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCB_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCB_IDUser] [int] NULL,
[RCB_Type] [int] NULL,
[RCB_CurrentValue] [float] NULL,
[RCB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlBalance] ADD CONSTRAINT [PK_iO_Product_ControlBalance] PRIMARY KEY CLUSTERED  ([RCB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlBalance_2] ON [dbo].[iO_Product_ControlBalance] ([RCB_IDLink_RMR], [RCB_IDLink_XRBl], [RCB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Product_ControlBalance_83_1393440038__K5_K6_K1_10] ON [dbo].[iO_Product_ControlBalance] ([RCB_IDLink_RMR], [RCB_IDLink_XRBl], [RCB_ID]) INCLUDE ([RCB_CurrentValue]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-113542_RCB_IDLINK_XRBI] ON [dbo].[iO_Product_ControlBalance] ([RCB_IDLink_XRBl]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlBalance_10] ON [dbo].[iO_Product_ControlBalance] ([RCB_IDLink_XRBl], [RCB_IDLink_RMR], [RCB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBalance', 'COLUMN', N'RCB_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBalance', 'COLUMN', N'RCB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBalance', 'COLUMN', N'RCB_Ownership'
GO
