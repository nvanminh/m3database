CREATE TABLE [dbo].[iO_Product_CreditCardHistory]
(
[RCCH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCH_IDUser] [int] NULL,
[RCCH_Type] [int] NULL,
[RCCH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_IDLink_RCCd] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_HistoryDate] [datetime] NULL,
[RCCH_CardNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_CardHolderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_ExpiryMonth] [int] NULL,
[RCCH_ExpiryYear] [int] NULL,
[RCCH_ExpiryDate] [datetime] NULL,
[RCCH_CustomerNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCH_PresetLimit] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CreditCardHistory] ADD CONSTRAINT [PK_iO_Product_CreditCardHistory] PRIMARY KEY CLUSTERED  ([RCCH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardHistory', 'COLUMN', N'RCCH_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardHistory', 'COLUMN', N'RCCH_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardHistory', 'COLUMN', N'RCCH_Ownership'
GO
