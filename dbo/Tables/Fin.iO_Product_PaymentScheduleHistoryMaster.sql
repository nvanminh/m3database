CREATE TABLE [Fin].[iO_Product_PaymentScheduleHistoryMaster]
(
[RPSM_PK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_SeqNumber] [bigint] NOT NULL,
[RPSM_NewMaturityDate] [datetime] NULL,
[RPSM_LoanStartDate] [datetime] NULL,
[RPSM_FirstRepaymentDate] [datetime] NULL,
[RPSM_IDLink_Frequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_LoanAmount] [float] NULL,
[RPSM_RescheduleFeeAmount] [float] NULL,
[RPSM_TotalLoanAmount] [float] NULL,
[RPSM_PaymentPlanAccount] [bit] NOT NULL CONSTRAINT [DF__iO_Produc__RPSM___7FEEF5F1] DEFAULT ((0)),
[RPSM_IDLink_PaymentMethod] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSM_SettlementDate] [datetime] NULL,
[RPSM_CreateDate] [datetime] NULL,
[RPSM_Current] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Fin].[iO_Product_PaymentScheduleHistoryMaster] ADD CONSTRAINT [PK_iO_Product_PaymentScheduleHistoryMaster] PRIMARY KEY CLUSTERED  ([RPSM_PK]) ON [PRIMARY]
GO
