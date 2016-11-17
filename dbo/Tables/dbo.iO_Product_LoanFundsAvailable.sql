CREATE TABLE [dbo].[iO_Product_LoanFundsAvailable]
(
[RLFa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFa_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFa_Sale] [float] NULL,
[RLFa_Deposit] [float] NULL,
[RLFa_OwnFunds] [float] NULL,
[RLFa_LoanSought] [float] NULL,
[RLFa_Gift] [float] NULL,
[RLFa_FirstHomeOwners] [float] NULL,
[RLFa_Other] [float] NULL,
[RLFa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLFa_Type] [int] NULL,
[RLFa_IDUser] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanFundsAvailable] ADD CONSTRAINT [PK_iO_Product_LoanFundsAvailable] PRIMARY KEY CLUSTERED  ([RLFa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsAvailable', 'COLUMN', N'RLFa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsAvailable', 'COLUMN', N'RLFa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsAvailable', 'COLUMN', N'RLFa_Ownership'
GO
