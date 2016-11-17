CREATE TABLE [dbo].[iO_FCX_Mortgage_RequestedComp]
(
[FCXmrc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXmrc_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_IDLink_FCXmr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXmrc_AdditionalInformation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_ComponentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_FirstPaymentDateLimit] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_InterstOnlyFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_InterestRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_MtgProdID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_RepaymentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_PricingRateinventory_IndexEffectiveDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_TeaserMaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_TeaserNetInterestRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_TeaserPAndIAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_TeaserRateInterestSaving] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_AdditionalPrincipal] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_AdvanceHold] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_AcutalPaymentTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_AmortizationTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_BalRemainingAtEndOfTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_BuydownRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_CashbackAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_CashbackAmountOverride] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_CashbackPercent] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_CommissionCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_Discount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_EffectiveAmortizationMonths] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_ExistingAccountIndicator] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_ExistingAccountNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_FirstPaymentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_FirstPaymentDateMonthly] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_IADNumberOfDays] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_InterestAdjustmentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_InterestAdjustmentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_MaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_MIAllocateFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_MortgageAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_NetInterestRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PAndIPaymentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PAndIPaymentAmountMonthly] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PaymentFrequency] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PerDiemInterestAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_Premium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_RepaymentOptions] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PrivilegePayment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PropertyTaxAllocateFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_PropertyTaxEscrowAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_RateGuranteePeriod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompMtg_TotalMortgageAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_AdvanceHold] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_CommissionCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_Discount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_ExistingAccountIndicator] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_ExistingAccountNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_FirstPaymentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_InterestAdjustmentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_LOCAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_MIAllocateFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_NetInterestRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PAndIPaymentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PAndIPaymentAountMonthly] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PaymentFrequency] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_Premium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PrepaymentOptions] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PrivilegePAyment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PropertyTaxAllocateFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_PropertyTaxEscrowAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLOC_TotalLOCAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_ActualPaymentTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_Discount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_FirstPaymentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_IADNumberOfDays] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_InterestAdjustmentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_InterestAdjustmentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_LoanAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_MaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_NetInterestRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_PAndIPaymentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_PAndIPaymentAmountMonthly] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_PaymentFrequency] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_PerDiemInterestAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompLoan_Premium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompCreditCard_CreditCardAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXmrc_CompOverdraft_OverdraftAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO