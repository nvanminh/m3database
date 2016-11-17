CREATE TABLE [dbo].[v_Rpt_PostCommitmentBuckets]
(
[RMR_SeqNumber] [bigint] NULL,
[CommitmentIssued] [datetime] NULL,
[DaysOutstanding] [int] NULL,
[ClosingDate] [datetime] NULL,
[Borrower] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UW] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Agent] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Brand] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_IDLink_Foreign] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
