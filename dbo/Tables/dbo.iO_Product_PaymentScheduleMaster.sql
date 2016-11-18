CREATE TABLE [dbo].[iO_Product_PaymentScheduleMaster]
(
[RPSM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RPSM_Type] [int] NULL,
[RPSM_IDUser] [int] NULL,
[RPSM_NewMaturityDate] [datetime] NULL,
[RPSM_LoanStartDate] [datetime] NULL,
[RPSM_FirstRepaymentDate] [datetime] NULL,
[RPSM_IDLink_Frequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_LoanAmount] [float] NULL,
[RPSM_RescheduleFeeAmount] [float] NULL,
[RPSM_TotalLoanAmount] [float] NULL,
[RPSM_PaymentPlanAccount] [bit] NOT NULL CONSTRAINT [DF__iO_Produc__RPSM___7F6BDA51] DEFAULT ((0)),
[RPSM_NominatedDirectDebitBankAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_IDLink_PaymentMethod] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_SpecialArrangement] [bit] NULL,
[RPSM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rpsm_settlementdate] [datetime] NULL,
[RPSM_Hardship] [bit] NULL,
[RPSD_DetailRowsData] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_PaymentScheduleMaster] ADD CONSTRAINT [PK__iO_Produ__ED418049BD0353B3] PRIMARY KEY CLUSTERED  ([RPSM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Product_PaymentScheduleMaster_RMR] ON [dbo].[iO_Product_PaymentScheduleMaster] ([RPSM_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
