CREATE TABLE [dbo].[iO_Product_PaymentScheduleDetail]
(
[RPSD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_RPSM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RPSD_Type] [int] NULL,
[RPSD_IDUser] [int] NULL,
[RPSD_PaymentDueDate] [datetime] NULL,
[RPSD_InterestRate] [decimal] (18, 2) NULL,
[RPSD_PrincipalAmount] [decimal] (18, 4) NULL,
[RPSD_InterestAmount] [decimal] (18, 4) NULL,
[RPSD_PaymentAmount] [decimal] (18, 2) NULL,
[RPSD_MonthlyFee] [decimal] (18, 2) NULL,
[RPSD_TotalPaymentAmount] [decimal] (18, 2) NULL,
[RPSD_IDLink_PaymentMethod] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_Frequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_CustomerNominatedAmount] [bit] NOT NULL CONSTRAINT [DF__iO_Produc__RPSD___79B300FB] DEFAULT ((0)),
[RPSD_PaymentProcessed] [bit] NOT NULL CONSTRAINT [DF__iO_Produc__RPSD___7AA72534] DEFAULT ((0)),
[RPSD_IDLink_Manual] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_LOC_Temp] [bit] NULL,
[RPSD_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_Dishonour] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_DeferredFee] [decimal] (18, 2) NULL,
[RPSD_Balance] [decimal] (18, 0) NULL,
[RPSD_Period] [int] NULL,
[RPSD_ScheduleType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_StepUpFlag] [bit] NULL,
[RPSD_SuspendedInterest] [decimal] (18, 2) NULL,
[RPSD_SuspendedInterestAmount] [decimal] (18, 2) NULL,
[RPSD_SuspendedInterestBalance] [decimal] (18, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_PaymentScheduleDetail] ADD CONSTRAINT [PK__iO_Produ__8E2AB600A96C06BA] PRIMARY KEY CLUSTERED  ([RPSD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182536_Manual] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_Manual]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182412_Payment_Method] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_PaymentMethod]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_byLoan] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_IDLink_RMR] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanDuedate] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentDueDate]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanProcessed] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentProcessed]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanProcessedCustnominated] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentProcessed], [RPSD_CustomerNominatedAmount]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanProcessedDishonor] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentProcessed], [RPSD_IDLink_Dishonour]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanProcessedInterestAmt] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentProcessed], [RPSD_InterestAmount]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LoanProcessedDueDate] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RMR], [RPSD_PaymentProcessed], [RPSD_PaymentDueDate]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_byTransaction] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182738_Payment_Due] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_PaymentDueDate]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_byProcessed] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_PaymentProcessed]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_loanProcessedTotalPayamt] ON [dbo].[iO_Product_PaymentScheduleDetail] ([RPSD_PaymentProcessed], [RPSD_IDLink_RMR], [RPSD_TotalPaymentAmount]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
