CREATE TABLE [dbo].[iO_Product_ControlTask]
(
[RCTk_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTk_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTk_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTk_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTk_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTk_IDLink_RCFf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTk_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTk_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCTk_IDLink_Activation] [int] NULL,
[RCTk_IDUser] [int] NULL,
[RCTk_Type] [int] NULL,
[RCTk_SecurityValue] [int] NULL,
[RCTk_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlTask] ADD CONSTRAINT [PK_iO_Product_ControlTask_1] PRIMARY KEY CLUSTERED  ([RCTk_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_ControlTask_25_1681441064__K5_K11_K1_K7] ON [dbo].[iO_Product_ControlTask] ([RCTk_IDLink_RMR], [RCTk_Type], [RCTk_ID], [RCTk_IDLink_XTKM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTask', 'COLUMN', N'RCTk_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTask', 'COLUMN', N'RCTk_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTask', 'COLUMN', N'RCTk_Ownership'
GO
