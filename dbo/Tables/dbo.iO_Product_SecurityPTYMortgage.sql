CREATE TABLE [dbo].[iO_Product_SecurityPTYMortgage]
(
[RSPm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPm_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPm_IDLink_Holder] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_Amount] [float] NULL,
[RSPm_DeedOfPriority] [bit] NULL,
[RSPm_BMSAmount] [float] NULL,
[RSPm_SubsequentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_IDUser] [int] NULL,
[RSPm_Type] [int] NULL,
[RSPm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSPm_IDLink_XMT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_IDLink_XRPM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXActualPaymentTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXAdditionalPrincipal] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXAdminFee] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXAffiliationProgram] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXAmortTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXBalanceRemaining] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXCashBackAmt] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXCashBackOverride] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXCashBackPercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXCurrentMtgNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXEffectiveAmort] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXExistingMtgFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXExistingMtgHolder] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXFirstPamentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInsuredFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInterestAdjustAmout] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInterestAdjustDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInterestCompound] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInterestOnlyFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRepaymentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXInterestType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubLanguage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubLenderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubLenderCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubLenderLinkID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubLenderRegistrationName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubUseLegacyUserID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderOriginatorNotes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderRoutingReceiver] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderRoutingSender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLenderSubmitRequestTime] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLineOfBusiness] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLoanType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLOCRepaymentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXLTV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMarketSubmission] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMarketSubmissionNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMIFeeAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMIPremiumAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMIPremiumPST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMIReferenceNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMortgageInsurerID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMortgageType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMtgInsIncludeFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMtgProdMPBusinessID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMtgProductID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXMtgProvderID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXNetLoanAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXOriginalMtgAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPAndIPaymentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPAndIPaymentAmountMonthly] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPaymentFrequency] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPaymentTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPayOffType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPricingRateInvIndexEffDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRateInterestRage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRateDiscount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRatePremium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRateBuydownRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRateNetRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRateGuaranteeLength] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRefiAdditionalInfo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRefiBlendedAmort] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXRequestedRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPrivilegePayment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPrepaymentOptions] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXSingleProgressiveType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXTotalLoanAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXPAndIPaymentAmountQualify] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingGDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingRate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingTDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingDetailAmortTerm] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingDetailInterestCompound] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingDetailInterestOnlyFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPm_FCXQualifyingDetailRepaymentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityPTYMortgage] ADD CONSTRAINT [PK_iO_Product_SecurityPTYMortgage] PRIMARY KEY CLUSTERED  ([RSPm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_SecurityPTYMortgage_25_935726436__K3_K71_22] ON [dbo].[iO_Product_SecurityPTYMortgage] ([RSPm_IDLink_RSP], [RSPm_FCXPayOffType]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYMortgage', 'COLUMN', N'RSPm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYMortgage', 'COLUMN', N'RSPm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYMortgage', 'COLUMN', N'RSPm_Ownership'
GO