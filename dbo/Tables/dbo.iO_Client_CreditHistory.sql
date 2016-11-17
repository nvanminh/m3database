CREATE TABLE [dbo].[iO_Client_CreditHistory]
(
[CCH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCH_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCH_Type] [int] NULL,
[CCH_IDUser] [int] NULL,
[CCH_CreditScore] [int] NULL,
[CCH_Compliant] [bit] NULL,
[CCH_DefaultsActive] [bit] NULL,
[CCH_DefaultsValue] [float] NULL,
[CCH_JudgementsActive] [bit] NULL,
[CCH_JudgementsValue] [float] NULL,
[CCH_JudgementsMax_Years_3] [float] NULL,
[CCH_MortgageArrearsActive] [bit] NULL,
[CCH_MortgageArrearsValue] [float] NULL,
[CCH_MortgageArrearsMax_Months] [float] NULL,
[CCH_BankRuptcyActive] [bit] NULL,
[CCH_BankRuptcyDate_Discharge] [datetime] NULL,
[CCH_PartXActive] [bit] NULL,
[CCH_PartXDetails] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCH_HardshipActive] [int] NULL,
[CCH_MortgageRentArrearsM06_Active] [bit] NULL,
[CCH_MortgageRentArrearsM18_Active] [bit] NULL,
[CCH_MortgageRentArrearsM06_No] [int] NULL,
[CCH_MortgageRentArrearsM18_No] [int] NULL,
[CCH_MortgageRentMissedPayments_No] [int] NULL,
[CCH_BankRuptcyDischarge] [bit] NULL,
[CCH_BankRuptcyDate_Active] [datetime] NULL,
[CCH_BRFlag] [int] NULL,
[CCH_BRDate] [datetime] NULL,
[CCH_BRDischargeFlag] [int] NULL,
[CCH_BRDischargeDate] [datetime] NULL,
[CCH_IVAFlag] [int] NULL,
[CCH_IVADate] [datetime] NULL,
[CCH_IVADischargeFlag] [int] NULL,
[CCH_IVADischargeDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CreditHistory] ADD CONSTRAINT [PK_iO_Client_CreditHistory] PRIMARY KEY CLUSTERED  ([CCH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CreditHistory] ON [dbo].[iO_Client_CreditHistory] ([CCH_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CreditHistory', 'COLUMN', N'CCH_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CreditHistory', 'COLUMN', N'CCH_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CreditHistory', 'COLUMN', N'CCH_Ownership'
GO
