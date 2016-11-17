CREATE TABLE [dbo].[iO_FCX_SubjectPropertyExp]
(
[FCXse_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXse_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_IDLink_FCXs] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXse_MonthlyExpenseAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_PropertyExpenseAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_PropertyExpenseDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_PropertyExpensePeriod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXse_PropertyExpenseType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
