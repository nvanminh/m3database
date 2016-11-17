CREATE TABLE [dbo].[iO_Product_ConsumerCreditInsurance]
(
[RCCi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_DeclinedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_IDLink_LMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCi_AmountOfCover] [float] NULL,
[RCCi_CoverStartDate] [datetime] NULL,
[RCCi_CoverEndDate] [datetime] NULL,
[RCCi_ApplicationReceived] [bit] NULL,
[RCCi_ApplicationReceivedDate] [datetime] NULL,
[RCCi_ApplicationDeclined] [bit] NULL,
[RCCi_ApplicationDeclinedDate] [datetime] NULL,
[RCCi_PayDirectDebit] [bit] NULL,
[RCCi_DirectDebitAmtFormula] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCi_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ConsumerCreditInsurance] ADD CONSTRAINT [PK_iO_Product_ConsumerCreditInsurance] PRIMARY KEY CLUSTERED  ([RCCi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConsumerCreditInsurance', 'COLUMN', N'RCCi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConsumerCreditInsurance', 'COLUMN', N'RCCi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConsumerCreditInsurance', 'COLUMN', N'RCCi_Ownership'
GO
