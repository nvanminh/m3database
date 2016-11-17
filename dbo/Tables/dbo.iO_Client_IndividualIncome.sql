CREATE TABLE [dbo].[iO_Client_IndividualIncome]
(
[CINc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CINc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CINc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_IDLink_XIN] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_Value] [float] NULL,
[CINc_Detail] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CINc_Type] [int] NULL,
[CINc_IDUser] [int] NULL,
[CINc_Allowance] [float] NULL,
[CINc_Bonus] [float] NULL,
[CINc_Commission] [float] NULL,
[CINc_GrossBaseSalary] [float] NULL,
[CINc_Other] [float] NULL,
[CINc_OverTime] [float] NULL,
[CINc_Rental] [float] NULL,
[CINc_NetProfitAfterTax] [float] NULL,
[CINc_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_NetProfitBeforeTax] [float] NULL,
[CINc_ValueVerified] [float] NULL,
[CINc_PreviousValue] [float] NULL,
[CINc_PreviousValueVerified] [float] NULL,
[CINc_PreviousVerifiedFlag] [bit] NULL,
[CINc_VerifiedFlag] [bit] NULL,
[CINc_IDLink_CED] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_GrossNet] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_IncludeinRatio] [int] NULL,
[CINc_RatioPercentage] [float] NULL,
[CINc_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINc_CurrentForClient] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualIncome] ADD CONSTRAINT [PK_iO_Client_IncomeDetail] PRIMARY KEY CLUSTERED  ([CINc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Client_IndividualIncome_83_19531153__K28_K6_7_8] ON [dbo].[iO_Client_IndividualIncome] ([CINc_IDLink_CED], [CINc_IDLink_XIN]) INCLUDE ([CINc_IDLink_XFR], [CINc_Value]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_IndividualIncome] ON [dbo].[iO_Client_IndividualIncome] ([CINc_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Client_IndividualIncome_83_19531153__K32_K6_K5_K1_7_8] ON [dbo].[iO_Client_IndividualIncome] ([CINc_IDLink_RMR], [CINc_IDLink_XIN], [CINc_IDLink_CMR], [CINc_ID]) INCLUDE ([CINc_IDLink_XFR], [CINc_Value]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualIncome', 'COLUMN', N'CINc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualIncome', 'COLUMN', N'CINc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualIncome', 'COLUMN', N'CINc_Ownership'
GO
