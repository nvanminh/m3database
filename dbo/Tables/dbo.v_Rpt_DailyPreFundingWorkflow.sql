CREATE TABLE [dbo].[v_Rpt_DailyPreFundingWorkflow]
(
[RMR_SeqNumber] [bigint] NULL,
[ClosingDate] [datetime] NULL,
[DaysToFund] [int] NULL,
[DealPurpose] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentStatus] [varchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SpecialFeature] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BuydownRate] [float] NULL,
[NetRate] [float] NULL,
[RateDiscount] [float] NULL,
[RatePremium] [float] NULL,
[Borrower] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UW] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Agent] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LenderProfileID] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Brand] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lender] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Branch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentFrequency] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractAmort] [int] NULL,
[EffAmort] [int] NULL,
[ActualTerm] [int] NULL,
[PrincipleAndInterest] [float] NULL,
[YMR_IDLink_Foreign] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
