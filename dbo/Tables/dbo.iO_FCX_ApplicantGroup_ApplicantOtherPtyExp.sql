CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantOtherPtyExp]
(
[FCXaape_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaape_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_IDLink_FCXaap] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaape_MonthlyExpenseAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_PropertyExpenseAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_PropertyExpenseDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_PropertyExpensePeriod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaape_PropertyExpenseType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
