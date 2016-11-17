CREATE TABLE [dbo].[iO_B2P_BorrowerCalculation]
(
[PEbc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEbc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEbc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEbc_IDLink_PErm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEbc_AcceptableEmploymentInd] [bit] NULL,
[PEbc_AllowableIncomeAmt] [float] NULL,
[PEbc_BorrowerID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEbc_TotalHPIExpenseAmt] [float] NULL,
[PEbc_TotalValOutgoingsAmt] [float] NULL,
[PEbc_BorrowerAdverseLevelEnum] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEbc_TotalNumJudgementsDefaults] [int] NULL,
[PEbc_TotalNumJudgementsDefaultsPrime] [int] NULL,
[PEbc_TotalNumJudgementsDefaultsSubPrime] [int] NULL,
[PEbc_TotalValJudgementsDefaults] [float] NULL,
[PEbc_TotalValJudgementsDefaultsPrime] [float] NULL,
[PEbc_TotalValJudgementsDefaultsSubPrime] [float] NULL,
[PEbc_TotalValOutstandingJudgementDefault] [float] NULL,
[PEbc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_BorrowerCalculation] ADD CONSTRAINT [PK_iO_B2P_BorrowerCalculation] PRIMARY KEY CLUSTERED  ([PEbc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_BorrowerCalculation', 'COLUMN', N'PEbc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_BorrowerCalculation', 'COLUMN', N'PEbc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_BorrowerCalculation', 'COLUMN', N'PEbc_Ownership'
GO
