CREATE TABLE [dbo].[iO_Product_LoanTransfer]
(
[RDD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_CBD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_Inter] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_KPD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RDD_IDUser] [int] NULL,
[RDD_Type] [int] NULL,
[RDD_Description] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_PaymentMethod] [int] NULL,
[RDD_SchedulePaymentOption] [int] NULL,
[RDD_CustomerNominatedAmt_Fixed] [float] NULL,
[RDD_CustomerNominatedAmt_Variable] [float] NULL,
[RDD_MinimumPaymentAmt] [float] NULL,
[RDD_AdditionalAmt] [float] NULL,
[RDD_Total_DD_Amount] [float] NULL,
[RDD_DD_Formula] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_PercentageOption] [bit] NULL,
[RDD_Percentage_Amt] [float] NULL,
[RDD_ProcessAmount] [float] NULL,
[RDD_RecurrenceTotal] [int] NULL,
[RDD_RecurrenceCount] [int] NULL,
[RDD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDD_RecurringAmountTotal] [float] NULL,
[RDD_IncludeTax] [bit] NULL,
[RDD_TaxAmount] [float] NULL,
[RDD_IDlink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanTransfer] ADD CONSTRAINT [PK_iO_Product_Transfer] PRIMARY KEY CLUSTERED  ([RDD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanTransfer', 'COLUMN', N'RDD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanTransfer', 'COLUMN', N'RDD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanTransfer', 'COLUMN', N'RDD_Ownership'
GO
