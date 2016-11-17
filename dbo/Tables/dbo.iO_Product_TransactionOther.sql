CREATE TABLE [dbo].[iO_Product_TransactionOther]
(
[RTO_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTO_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTO_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTO_Type] [int] NULL,
[RTO_IDUser] [int] NULL,
[RTO_PaymentType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_PayeeName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTO_FeesAmount] [float] NULL,
[RTO_InterestAmount] [float] NULL,
[RTO_PrincipalAmount] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionOther] ADD CONSTRAINT [PK_iO_Product_TransactionOther] PRIMARY KEY CLUSTERED  ([RTO_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181255_RTM] ON [dbo].[iO_Product_TransactionOther] ([RTO_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionOther', 'COLUMN', N'RTO_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionOther', 'COLUMN', N'RTO_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionOther', 'COLUMN', N'RTO_Ownership'
GO
