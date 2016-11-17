CREATE TABLE [dbo].[iO_B2P_ResponseMaster]
(
[PErm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PErm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_IDLink_PEmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PErm_SubmissionID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_EvaluationDate] [datetime] NULL,
[PErm_CalcAppAdverseLevel] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_CalcApplicationHPIExpenseAmt] [float] NULL,
[PErm_CalcAppTotalNumJudgementsDefaults] [int] NULL,
[PErm_CalcAppTotalNumJudgementsDefaultsPrime] [int] NULL,
[PErm_CalcAppTotalNumJudgementsDefaultsSubPrime] [int] NULL,
[PErm_CalcAppTotalValJudgementsDefaults] [float] NULL,
[PErm_CalcAppTotalValJudgementsDefaultsPrime] [float] NULL,
[PErm_CalcAppTotalValJudgementsDefaultsSubPrime] [float] NULL,
[PErm_CalcAppTotalValOutgoingsAmt] [float] NULL,
[PErm_CalcTotalRequestedLoanAmt] [float] NULL,
[PErm_CalcTotalAllowableCashSurplusAmt] [float] NULL,
[PErm_CalcTotalCashSurplusAmt] [float] NULL,
[PErm_CalcScore1] [int] NULL,
[PErm_CalcScore2] [int] NULL,
[PErm_CalcScore3] [int] NULL,
[PErm_CalcScore4] [int] NULL,
[PErm_CalcScore5] [int] NULL,
[PErm_DecDeclineSeverity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecDelegationLevel] [int] NULL,
[PErm_DecNumAlternateOfferings] [int] NULL,
[PErm_DecRequestedDecisionEnum] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqBorrower] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqCredit] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqFraud] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqLoan] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqProduct] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqScore] [int] NULL,
[PErm_DecStatusEnumReqSecurity] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqServiceability] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecStatusEnumReqValuation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_DecTechnicalResponseStatus] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErm_CalcTotalAllowableIncomeAmt] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseMaster] ADD CONSTRAINT [PK_iO_B2P_ResponseMaster] PRIMARY KEY CLUSTERED  ([PErm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseMaster', 'COLUMN', N'PErm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseMaster', 'COLUMN', N'PErm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseMaster', 'COLUMN', N'PErm_Ownership'
GO
