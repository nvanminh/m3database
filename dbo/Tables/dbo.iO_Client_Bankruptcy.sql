CREATE TABLE [dbo].[iO_Client_Bankruptcy]
(
[CBy_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBy_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_SeqNumber] [bigint] NULL,
[CBy_IDUser] [int] NULL,
[CBy_Type] [int] NULL,
[CBy_TrusteeName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_ContactInformation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_BankruptcyReceiveDate] [datetime] NULL,
[CBy_ClientNameInBankruptcy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBy_BankruptcyDate] [datetime] NULL,
[CBy_LawyerReminder] [datetime] NULL,
[CBy_BankruptcyTotal] [float] NULL,
[CBy_ProofOfClaim] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_Bankruptcy] ADD CONSTRAINT [PK_iO_Client_Bankruptcy] PRIMARY KEY CLUSTERED  ([CBy_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
