CREATE TABLE [dbo].[iO_Product_LoanDisbursement]
(
[RLSd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLSd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLSd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_Client] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLSd_ProcessDate] [datetime] NULL,
[RLSd_Value] [float] NULL,
[RLSd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_ChequeNumber] [int] NULL,
[RLSd_Drawer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_Bank] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_Branch] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_AccountBSBNo] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_AccountNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_ChequeDated] [datetime] NULL,
[RLSd_PaymentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_Type] [int] NULL,
[RLSd_IDUser] [int] NULL,
[RLSd_InternalFlag] [int] NULL,
[RLSd_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_ClientName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLSd_Reference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanDisbursement] ADD CONSTRAINT [PK_iO_Product_LoanDisbursement] PRIMARY KEY CLUSTERED  ([RLSd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-190446_RMR] ON [dbo].[iO_Product_LoanDisbursement] ([RLSd_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-191542_RMR_TYPE] ON [dbo].[iO_Product_LoanDisbursement] ([RLSd_IDLink_RMR], [RLSd_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_LoanDisbursement_Owner] ON [dbo].[iO_Product_LoanDisbursement] ([RLSd_Ownership]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDisbursement', 'COLUMN', N'RLSd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDisbursement', 'COLUMN', N'RLSd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDisbursement', 'COLUMN', N'RLSd_Ownership'
GO
