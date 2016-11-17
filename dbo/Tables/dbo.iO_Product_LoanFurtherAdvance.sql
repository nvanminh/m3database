CREATE TABLE [dbo].[iO_Product_LoanFurtherAdvance]
(
[RLFA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLFA_IDUser] [int] NULL,
[RLFA_Type] [int] NULL,
[RLFA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFA_SettlementDate] [datetime] NULL,
[RLFA_ApprovedDate] [datetime] NULL,
[RLFA_ProcessedDate] [datetime] NULL,
[RLFA_ApplicationAmount] [float] NULL,
[RLFA_ApprovedAmount] [float] NULL,
[RLFA_EffectiveOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanFurtherAdvance] ADD CONSTRAINT [PK_iO_Product_LoanUpstamp] PRIMARY KEY CLUSTERED  ([RLFA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFurtherAdvance', 'COLUMN', N'RLFA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFurtherAdvance', 'COLUMN', N'RLFA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFurtherAdvance', 'COLUMN', N'RLFA_Ownership'
GO
