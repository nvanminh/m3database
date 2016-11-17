CREATE TABLE [dbo].[iO_Product_LoanLiabilityMaster]
(
[RLLm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLLm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLLm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_RentBoard] [float] NULL,
[RLLm_Maintenace] [float] NULL,
[RLLm_ChildSupport] [float] NULL,
[RLLm_Other] [float] NULL,
[RLLm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLLm_Type] [int] NULL,
[RLLm_IDUser] [int] NULL,
[RLLm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_IDLink_XLBo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_LoanBSB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_LoanAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_Value] [float] NULL,
[RLLm_ValuePerYear] [float] NULL,
[RLLm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_Maintenance] [float] NULL,
[RLLm_PEGA_HPI] [float] NULL,
[RLLm_PEGA_Total] [float] NULL,
[RLLm_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLm_CurrentForClient] [bit] NULL,
[RLLm_PaymentMethod] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rllm_ValueVerified] [float] NULL,
[RLLm_IsVerified] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanLiabilityMaster] ADD CONSTRAINT [PK_iO_Product_LoanLiabilityMaster] PRIMARY KEY CLUSTERED  ([RLLm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-114302_CMR] ON [dbo].[iO_Product_LoanLiabilityMaster] ([RLLm_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Product_LoanLiabilityMaster_83_141959582__K4_K13_K15_K14_1_18] ON [dbo].[iO_Product_LoanLiabilityMaster] ([RLLm_IDLink_RMR], [RLLm_IDLink_CMR], [RLLm_IDLink_XFR], [RLLm_IDLink_XLBo]) INCLUDE ([RLLm_ID], [RLLm_Value]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityMaster', 'COLUMN', N'RLLm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityMaster', 'COLUMN', N'RLLm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityMaster', 'COLUMN', N'RLLm_Ownership'
GO
