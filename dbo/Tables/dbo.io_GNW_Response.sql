CREATE TABLE [dbo].[io_GNW_Response]
(
[GNWRSP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_IDLink_GNWRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_IDLink_RMR] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_SeqNumber] [bigint] NULL,
[GNWRSP_LocalAppID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_TransactionSubmitDateTime] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_ResponseCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_GenworthReferenceNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_InstitutionCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_TransitNumber] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_LenderLoanNumber] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_BorrowerLastName] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_BorrowerFirstName] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_BorrowerMidInitial] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_PremiumAmount] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_FeeAmount] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_TaxAmount] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_TotalAmount] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_InsuredAmount] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_Coverage] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_ExpiryDate] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_AmortMonths] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_ExpiryInterestDate] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_PropertyRiskRating] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_MarketRiskRating] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_CovenantRiskRating] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_NeighborhoodRiskIndicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSP_InsuranceIndicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_io_GNW_Response_25_72439382__K7_K8_19] ON [dbo].[io_GNW_Response] ([GNWRSP_IDLink_RMR], [GNWRSP_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_io_GNW_Response_9_72439382__K7_K10] ON [dbo].[io_GNW_Response] ([GNWRSP_IDLink_RMR], [GNWRSP_TransactionSubmitDateTime]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_io_GNW_Response_9_72439382__K7_K10_K11] ON [dbo].[io_GNW_Response] ([GNWRSP_IDLink_RMR], [GNWRSP_TransactionSubmitDateTime], [GNWRSP_ResponseCode]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_io_GNW_Response_9_72439382__K11_K7_K10] ON [dbo].[io_GNW_Response] ([GNWRSP_ResponseCode], [GNWRSP_IDLink_RMR], [GNWRSP_TransactionSubmitDateTime]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_io_GNW_Response_9_72439382__K10_K7] ON [dbo].[io_GNW_Response] ([GNWRSP_TransactionSubmitDateTime], [GNWRSP_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
