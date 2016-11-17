CREATE TABLE [dbo].[iO_Product_CheckListAssessment]
(
[RCA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_OngoingEmployment] [int] NULL,
[RCA_EmployeeIsOnContract] [int] NULL,
[RCA_ContractExpiryDate] [datetime] NULL,
[RCA_EmployeeIsOnProbation] [int] NULL,
[RCA_ProbationExpiry] [datetime] NULL,
[RCA_EmploymentConfirmed] [int] NULL,
[RCA_ProofOfIncomeRcvd] [int] NULL,
[RCA_EmploymentIsAcceptable] [int] NULL,
[RCA_EmploymentABNSearch] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_EmploymentWhitePagesSearch] [int] NULL,
[RCA_PersonalDetailsMatchPaySlip] [int] NULL,
[RCA_PreviousEmpConfirmed] [int] NULL,
[RCA_ResidenceConfirmed] [int] NULL,
[RCA_ProofOfResidenceRcvd] [int] NULL,
[RCA_ResidenceIsAcceptable] [int] NULL,
[RCA_ResidenceWhitePagesSearch] [int] NULL,
[RCA_RateNotice] [int] NULL,
[RCA_LeaseAgreement] [int] NULL,
[RCA_ResponsibleTennant] [int] NULL,
[RCA_PrivacyHasBeenSigned] [int] NULL,
[RCA_VedaCheckRequired] [int] NULL,
[RCA_CreditHistoryAcceptable] [int] NULL,
[RCA_ConfirmAllNumbersConnected] [int] NULL,
[RCA_ExistingCustomer] [int] NULL,
[RCA_BorrowerDetailsConfirmed] [int] NULL,
[RCA_BorrowerDetailsByWhitePages] [int] NULL,
[RCA_ThreeMonthsOfStatements] [int] NULL,
[RCA_AdditionalLoanStatements] [int] NULL,
[RCA_CreditCardStatements] [int] NULL,
[RCA_DealerTaxInvoice] [int] NULL,
[RCA_ContractOfSale] [int] NULL,
[RCA_BankAccountVerified] [int] NULL,
[RCA_PurchasersDetsVerifiedOnTaxInvoice] [int] NULL,
[RCA_RoadWorthyCertificate] [int] NULL,
[RCA_ProofRegInSellersName] [int] NULL,
[RCA_SellersDriversLicence] [int] NULL,
[RCA_ProofSellersBankDetails] [int] NULL,
[RCA_SignedTaxInvoice] [int] NULL,
[RCA_HaveInsuranceDetsBeenUpdated] [int] NULL,
[RCA_SecurityIsOK] [int] NULL,
[RCA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_NoteRes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_C1WPListed] [int] NULL,
[RCA_C2WPListed] [int] NULL,
[RCA_C1SpokeTo] [int] NULL,
[RCA_C2SpokeTo] [int] NULL,
[RCA_C1DetailsConfirmed] [int] NULL,
[RCA_C2DetailsConfirmed] [int] NULL,
[RCA_C1Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_C2Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_BorrowerNote] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_UnsuitableRegulations] [int] NULL,
[RCA_ComplyWithObligations] [int] NULL,
[RCA_ComplyWithNoHardship] [int] NULL,
[RCA_LikelinessOfEventsToStopPayments] [int] NULL,
[RCA_ResponseFactor] [int] NULL,
[RCA_LoansRepaid] [int] NULL,
[RCA_LoansRepaidWithinTerm] [int] NULL,
[RCA_SufficientDisposableIncome] [int] NULL,
[RCA_CentrelinkRepayments] [int] NULL,
[RCA_CustomerGrossIncome] [int] NULL,
[RCA_SmallAmountCreditContacts] [int] NULL,
[RCA_DefaultofSmallAmountCreditContacts] [int] NULL,
[RCA_AllDocumentationProvided] [int] NULL,
[RCA_InformationVerified] [int] NULL,
[RCA_InformationProvidedTrue] [int] NULL,
[RCA_ProposedContractSuitable] [int] NULL,
[RCA_TermsUnderstood] [int] NULL,
[RCA_FinalAssessmentRequested] [int] NULL,
[RCA_MLTFDocsChecked] [int] NULL,
[RCA_MLTFIncident] [int] NULL,
[RCA_MLTFIncidentSeverity] [int] NULL,
[RCA_MLTFRiskScore] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_ComparableTwoMonths] [int] NULL,
[RCA_IncomeReviewPeriod] [int] NULL,
[RCA_StatementDays] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CheckListAssessment] ADD CONSTRAINT [PK_iO_Product_CheckListAssessment] PRIMARY KEY CLUSTERED  ([RCA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CheckListAssessment', 'COLUMN', N'RCA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CheckListAssessment', 'COLUMN', N'RCA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CheckListAssessment', 'COLUMN', N'RCA_Ownership'
GO
