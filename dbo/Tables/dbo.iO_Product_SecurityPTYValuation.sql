CREATE TABLE [dbo].[iO_Product_SecurityPTYValuation]
(
[RSPv_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPv_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPv_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPv_IDLink_XRV] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_CMR_Company] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_CMR_Contact] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_RecordID] [int] NULL,
[RSPv_Date] [datetime] NULL,
[RSPv_Amount] [float] NULL,
[RSPv_RentalAmount] [float] NULL,
[RSPv_InsurableAmount] [float] NULL,
[RSPv_ForcedSaleValue] [float] NULL,
[RSPv_EstimatedValue] [float] NULL,
[RSPv_NextValuationDate] [datetime] NULL,
[RSPv_AccessDetails] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_CMV_ActualRatio] [float] NULL,
[RSPV_CMV_MaxRatio] [float] NULL,
[RSPv_CMV_MaxAmount] [float] NULL,
[RSPv_FSV_ActualRatio] [float] NULL,
[RSPv_FSV_MaxRatio] [float] NULL,
[RSPv_FSV_MaxAmount] [float] NULL,
[RSPv_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDUser] [int] NULL,
[RSPv_Type] [int] NULL,
[RSPv_Value] [float] NULL,
[RSPv_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSPv_Owbership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_ReplacementAmount] [float] NULL,
[RSPv_ValuerRegNo] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_ValuationCost] [float] NULL,
[RSPv_InvoiceNo] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_ExternalCondition] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_InternalCondition] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_DefectsObserved] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_RepairsRequired] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_EstimatedRepairCost] [float] NULL,
[RSPv_FirstComparisonSaleDate] [datetime] NULL,
[RSPv_FirstComparisonSaleValue] [float] NULL,
[RSPv_SecondComparisonSaleDate] [datetime] NULL,
[RSPv_SecondComparisonSaleValue] [float] NULL,
[RSPv_ThirdComparisonSaleDate] [datetime] NULL,
[RSPv_ThirdComparisonSaleValue] [float] NULL,
[RSPv_EnvironmentalRisk] [int] NULL,
[RSPv_RequiredImprovementsAffect] [int] NULL,
[RSPv_LandFactorsRisk] [int] NULL,
[RSPv_EconomyFactorsRisk] [int] NULL,
[RSPv_NeighbourhoodFactorsRisk] [int] NULL,
[RSPv_ReducingValueRisk] [int] NULL,
[RSPv_MarketVolatility] [int] NULL,
[RSPv_ValuerFirstName] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_ValuerLastName] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_MarketSegmentRisk] [int] NULL,
[RSPv_IDLink_XRTy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_XRTu] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_XRTt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_IDLink_XRVt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_Improvements] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_ImprovementsValue] [float] NULL,
[RSPv_IDLink_ValuationCurrency_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_XMLAPR] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPv_XMLPopulation] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityPTYValuation] ADD CONSTRAINT [PK_iO_Prouct_SecurityPTYValuation] PRIMARY KEY CLUSTERED  ([RSPv_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_SecurityPTYValuation_10] ON [dbo].[iO_Product_SecurityPTYValuation] ([RSPv_IDLink_RSP], [RSPv_Date], [RSPv_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYValuation', 'COLUMN', N'RSPv_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYValuation', 'COLUMN', N'RSPv_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYValuation', 'COLUMN', N'RSPv_Ownership'
GO
