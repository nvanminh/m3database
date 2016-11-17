CREATE TABLE [dbo].[iO_MOR_LoanDetails]
(
[MORld_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_IDLink_MORac] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_LOANAMOUNT] [decimal] (18, 0) NULL,
[MORld_PAYMENTAMOUNT] [decimal] (18, 0) NULL,
[MORld_REQUESTEDPAYMENT] [decimal] (18, 0) NULL,
[MORld_PAYMENTFREQUENCY] [int] NULL,
[MORld_FIRSTPAYMENTDATE] [smalldatetime] NULL,
[MORld_MONTHENDINDICATOR] [int] NULL,
[MORld_ACCELERATEDPAYMENTIND] [bit] NULL,
[MORld_INTERESTADJUSTMENTDATE] [smalldatetime] NULL,
[MORld_MATURITYDATE] [smalldatetime] NULL,
[MORld_REPAYMENTTYPE] [int] NULL,
[MORld_NETRATE] [decimal] (18, 0) NULL,
[MORld_BLENDEDAMORTIZATIONIND] [bit] NULL,
[MORld_AMORTIZATIONINMONTHS] [tinyint] NULL,
[MORld_AMORTIZATIONINYEARS] [tinyint] NULL,
[MORld_PRODUCTTERMINMONTHS] [tinyint] NULL,
[MORld_PRODUCTTERMINYEARS] [tinyint] NULL,
[MORld_PRODUCTCODE] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORld_PREPAYMENTOPTION] [int] NULL,
[MORld_EARLYPAYOUTOPTION] [int] NULL,
[MORld_CASHBACKPERCENTAGE] [int] NULL,
[MORld_RATECOMPOUNDINGFREQUENCY] [int] NULL,
[MORld_RATECHANGEFREQUENCY] [int] NULL,
[MORld_ADJUSTMENT] [decimal] (18, 0) NULL,
[MORld_ADJUSTMENTREASON] [int] NULL,
[MORld_ADJUSTMENTBUYDOWN] [decimal] (18, 0) NULL,
[MORld_BUYDOWNAMOUNT] [decimal] (18, 0) NULL
) ON [PRIMARY]
GO