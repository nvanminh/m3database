CREATE TABLE [dbo].[iO_Product_LoanPayment]
(
[RLP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLP_Type] [int] NULL,
[RLP_IDUser] [int] NULL,
[RLP_Fixed] [float] NULL,
[RLP_Final] [float] NULL,
[RLP_Interest] [float] NULL,
[RLP_Principal] [float] NULL,
[RLP_Term] [int] NULL,
[RLP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_Period] [int] NULL,
[RLP_AmortizationSchedule] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLP_FixedTotalL] [float] NULL,
[RLP_FixedTotalA] [float] NULL,
[RLP_InterestTotalL] [float] NULL,
[RLP_InterestTotalA] [float] NULL,
[RLP_PrincipalTotalL] [float] NULL,
[RLP_PrincipalTotalA] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanPayment] ADD CONSTRAINT [PK_iO_Product_LoanPayment] PRIMARY KEY CLUSTERED  ([RLP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_LoanPayment_10] ON [dbo].[iO_Product_LoanPayment] ([RLP_IDLink_RMR], [RLP_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_LoanPayment_25_205959810__K5_K7_K1_9] ON [dbo].[iO_Product_LoanPayment] ([RLP_IDLink_RMR], [RLP_Type], [RLP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanPayment', 'COLUMN', N'RLP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanPayment', 'COLUMN', N'RLP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanPayment', 'COLUMN', N'RLP_Ownership'
GO
