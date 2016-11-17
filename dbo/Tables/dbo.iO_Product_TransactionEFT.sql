CREATE TABLE [dbo].[iO_Product_TransactionEFT]
(
[RTE_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTE_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTE_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTE_IDUser] [int] NULL,
[RTE_Type] [int] NULL,
[RTE_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_BSBNo] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_Number] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_AccountInstitutionNo_CAN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_AccountTransitNo_CAN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_AccountNumber_CAN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_Reference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTE_Suffix] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionEFT] ADD CONSTRAINT [PK_iO_Product_TransactionEFT] PRIMARY KEY CLUSTERED  ([RTE_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181153_RTM] ON [dbo].[iO_Product_TransactionEFT] ([RTE_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionEFT', 'COLUMN', N'RTE_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionEFT', 'COLUMN', N'RTE_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionEFT', 'COLUMN', N'RTE_Ownership'
GO
