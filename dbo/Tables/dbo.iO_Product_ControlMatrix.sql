CREATE TABLE [dbo].[iO_Product_ControlMatrix]
(
[RCMx_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCMx_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCMx_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCMx_IDUser] [int] NULL,
[RCMx_Type] [int] NULL,
[RCMx_Order] [int] NULL,
[RCMx_Selected] [bit] NULL,
[RCMx_Value] [float] NULL,
[RCMx_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_InterestRate] [float] NULL,
[RCMx_PaymentMonthly] [float] NULL,
[RCMx_MaxLTV] [float] NULL,
[RCMx_FeeApplication] [float] NULL,
[RCMx_FeeCompletion] [float] NULL,
[RCMx_NewLoanAmount] [float] NULL,
[RCMx_NewLoanTermY] [int] NULL,
[RCMx_NewLoanTermM] [int] NULL,
[RCMx_IDLink_XRIr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_List_XRIr] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_CALStdPayment] [float] NULL,
[RCMx_CALStdRate] [float] NULL,
[RCMx_CALStrPayment] [float] NULL,
[RCMx_CALStrRate] [float] NULL,
[RCMx_CALEssentialExpenditure] [float] NULL,
[RCMx_CALBasicLivingCosts] [float] NULL,
[RCMx_APR_XMLIn] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMx_APR_XMLOut] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlMatrix] ADD CONSTRAINT [PK_iO_Product_ControlMatrix] PRIMARY KEY CLUSTERED  ([RCMx_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlMatrix] ON [dbo].[iO_Product_ControlMatrix] ([RCMx_IDLink_RMR]) ON [PRIMARY]
GO
