CREATE TABLE [Fin].[iO_Product_PaymentScheduleHistoryDetail]
(
[RPSD_PK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSD_RPSM_FK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_RPSM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_SeqNumber] [bigint] NOT NULL,
[RPSD_PaymentDueDate] [datetime] NULL,
[RPSD_InterestRate] [decimal] (18, 2) NULL,
[RPSD_PrincipalAmount] [decimal] (18, 4) NULL,
[RPSD_InterestAmount] [decimal] (18, 4) NULL,
[RPSD_PaymentAmount] [decimal] (18, 2) NULL,
[RPSD_MonthlyFee] [decimal] (18, 2) NULL,
[RPSD_TotalPaymentAmount] [decimal] (18, 2) NULL,
[RPSD_IDLink_PaymentMethod] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_Frequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_PaymentProcessed] [bit] NOT NULL CONSTRAINT [DF__iO_Produc__RPSD___7D128946] DEFAULT ((0)),
[RPSD_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSD_IDLink_Dishonour] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Fin].[iO_Product_PaymentScheduleHistoryDetail] ADD CONSTRAINT [PK_iO_Product_PaymentScheduleHistoryDetail] PRIMARY KEY CLUSTERED  ([RPSD_PK]) ON [PRIMARY]
GO
