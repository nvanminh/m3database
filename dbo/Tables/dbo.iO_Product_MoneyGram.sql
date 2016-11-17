CREATE TABLE [dbo].[iO_Product_MoneyGram]
(
[RMG_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMG_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMG_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_MoneyGramID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_MoneyGramType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_ExchangeRate] [float] NULL,
[RMG_DestCountry] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_DestCity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_IssuingJurisdiction] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_TestQuestion] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Answer] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_GenFirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_GenLastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Title] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Postcode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RMG_AuthorisationID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_OpID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_GenMiddleName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_Complete] [bit] NULL,
[RMG_MarkedForDeletion] [bit] NULL,
[RMG_IsBrandNewMGClient] [bit] NULL,
[RMG_RecMoneyGramID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecOpID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_SendAmountSent] [float] NULL,
[RMG_SendConsumerFee] [float] NULL,
[RMG_SendTotalAmountCol] [float] NULL,
[RMG_MoneyGramCreateDate] [datetime] NULL,
[RMG_SendEffectiveDate] [datetime] NULL,
[RMG_RecEffectiveDate] [datetime] NULL,
[RMG_RecExchangeRate] [float] NULL,
[RMG_RecAmountReceived] [float] NULL,
[RMG_RecPayCash] [float] NULL,
[RMG_RecDirectCredit] [float] NULL,
[RMG_RecTotalAmount] [float] NULL,
[RMG_RecAccBSBNo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecAccName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecAccNo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecAccBankName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecAccBankLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecFirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_RecLastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_FullyRefunded] [bit] NULL,
[RMG_AltRecOption] [int] NULL,
[RMG_BankPRN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMG_MobilePhone] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_MoneyGram] ADD CONSTRAINT [PK_iO_Product_MoneyGram] PRIMARY KEY CLUSTERED  ([RMG_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MoneyGram', 'COLUMN', N'RMG_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MoneyGram', 'COLUMN', N'RMG_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MoneyGram', 'COLUMN', N'RMG_Ownership'
GO
