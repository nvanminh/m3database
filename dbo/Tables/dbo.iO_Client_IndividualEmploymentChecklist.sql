CREATE TABLE [dbo].[iO_Client_IndividualEmploymentChecklist]
(
[CEC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CEC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CEC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_IDLink_CED] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CEC_StartDate] [smalldatetime] NULL,
[CEC_ProbationExpiryDate] [smalldatetime] NULL,
[CEC_EmployeePayDay] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_IDLink_XCEt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_AverageHoursPerCycle] [int] NULL,
[CEC_NetSalary] [float] NULL,
[CEC_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_OngoingWork] [int] NULL,
[CEC_CreditSecondBankAcc] [int] NULL,
[CEC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualEmploymentChecklist] ADD CONSTRAINT [PK_iO_Client_IndividualEmploymentChecklist] PRIMARY KEY CLUSTERED  ([CEC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentChecklist', 'COLUMN', N'CEC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentChecklist', 'COLUMN', N'CEC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentChecklist', 'COLUMN', N'CEC_Ownership'
GO
