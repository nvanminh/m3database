CREATE TABLE [dbo].[iO_Product_Transaction]
(
[RTM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Till] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Funder] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Reversal] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTYp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RSE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTrT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_ERN] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Batch_Input] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Batch_DD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Batch_DC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Batch_GL] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_GLCompany] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_GLCR] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_GLDB] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_GLJournal] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Sign] [int] NULL,
[RTM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTM_DisplayOrder] [int] NULL,
[RTM_IDUser] [int] NULL,
[RTM_Type] [int] NULL,
[RTM_Status] [int] NULL,
[RTM_StatementNumber] [int] NULL,
[RTM_DateC] [datetime] NULL,
[RTM_DateE] [datetime] NULL,
[RTM_DateQ] [datetime] NULL,
[RTM_DateD] [datetime] NULL,
[RTM_Value] [float] NULL,
[RTM_Points] [int] NULL,
[RTM_ValueDB] [float] NULL,
[RTM_PointsDB] [int] NULL,
[RTM_ValueCR] [float] NULL,
[RTM_PointsCR] [int] NULL,
[RTM_Rate] [float] NULL,
[RTM_TypeGhost] [bit] NULL,
[RTM_TransferBankDC] [bit] NULL,
[RTM_TransferBankDD] [bit] NULL,
[RTM_TransferGL] [bit] NULL,
[RTM_PrintCheque] [bit] NULL,
[RTM_Visible] [bit] NULL,
[RTM_Override] [bit] NULL,
[RTM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTRR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_ReasonNoteOther] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_ProcessBranch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RMG] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_LinkID_Group] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Group] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Instalment] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_ValuePaid] [float] NULL,
[RTM_IDlink_Branch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XFSCm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_CBD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_FlagStatus] [int] NULL,
[RTM_FlgaStatus] [int] NULL,
[RTM_IDLink_Link_XFSCm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDlink_ACH] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_Processed] [bit] NULL,
[RTM_ValueOriginal] [float] NULL,
[RTM_OverRideZero] [bit] NULL,
[RTM_Branch] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_Response_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RTM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_POS_Seq_Number] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_POS_Nett_Sales] [float] NULL,
[RTM_POS_Loyalty_Points] [float] NULL,
[RTM_POS_Gross_Sales] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_Transaction] ADD CONSTRAINT [PK_iO_Product_Transaction] PRIMARY KEY CLUSTERED  ([RTM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-112616_Date_C] ON [dbo].[iO_Product_Transaction] ([RTM_DateC]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-112737_Date_E] ON [dbo].[iO_Product_Transaction] ([RTM_DateE]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Product_Transaction_41_829962033__K1_K25] ON [dbo].[iO_Product_Transaction] ([RTM_ID], [RTM_DateE]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_Transaction] ON [dbo].[iO_Product_Transaction] ([RTM_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_Transaction_rtm_idlink_rmr_rtm_idlink_xtrm_RTM_DateE] ON [dbo].[iO_Product_Transaction] ([RTM_IDLink_RMR], [RTM_IDLink_XTRM], [RTM_DateE]) INCLUDE ([RTM_Value]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-112903_XTRM] ON [dbo].[iO_Product_Transaction] ([RTM_IDLink_XTRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_Transaction_SeqNumber] ON [dbo].[iO_Product_Transaction] ([RTM_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_Transaction', 'COLUMN', N'RTM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_Transaction', 'COLUMN', N'RTM_Ownership'
GO
