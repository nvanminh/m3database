CREATE TABLE [dbo].[iO_Client_CreditReport]
(
[CCR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDUser] [int] NULL,
[CCR_Type] [int] NULL,
[CCR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCR_CreditBureauName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_CreditBureauReportType] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_CreditBureauDatePulled] [datetime] NULL,
[CCR_CreditProvider] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_BalanceOwning] [float] NULL,
[CCR_DebtOutstanding] [bit] NULL,
[CCR_DebtStatus] [int] NULL,
[CCR_DateStart] [datetime] NULL,
[CCR_DateExpiry] [datetime] NULL,
[CCR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CreditReport] ADD CONSTRAINT [PK_iO_Client_CreditReport] PRIMARY KEY CLUSTERED  ([CCR_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CreditReport] ON [dbo].[iO_Client_CreditReport] ([CCR_IDLink_CMR]) ON [PRIMARY]
GO
