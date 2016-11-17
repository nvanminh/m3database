CREATE TABLE [dbo].[iO_Control_ProductMaster]
(
[XRP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XSCc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XRT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_Key01] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XRR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XRRo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_Note] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_Type] [int] NULL,
[XRP_IDUser] [int] NULL,
[XRP_IDARMclassic] [int] NULL,
[XRP_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_AlternateDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_ValueMax] [float] NULL,
[XRP_ValueMin] [float] NULL,
[XRP_TermMax] [int] NULL,
[XRP_TermMin] [int] NULL,
[XRP_TermDefaultYear] [int] NULL,
[XRP_TermDefaultMonth] [int] NULL,
[XRP_ConversionTerm] [int] NULL,
[XRP_DailyCalculationMethod] [int] NULL,
[XRP_InterestChargeMethod] [int] NULL,
[XRP_StopCascade] [bit] NULL,
[XRP_LOCInd] [bit] NULL,
[XRP_StopInterestCharging] [bit] NULL,
[XRP_FixedOrVariable] [bit] NULL,
[XRP_SecurityValue] [int] NULL,
[XRP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XSCTm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XWFEm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_DateStart] [datetime] NULL,
[XRP_DateEnd] [datetime] NULL,
[XRP_InterestChargeType] [int] NULL,
[XRP_ProductType] [int] NULL,
[XRP_IDLink_XRPy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XRPu] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_RateHoldPeriod] [int] NULL,
[XRP_RateHoldExpiryDate] [datetime] NULL,
[XRP_DealPurposeGroup] [int] NULL,
[XRP_IDLink_XSYSct_Base] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_IDLink_XSYSct_Target] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_CurrencyConversion] [bit] NULL,
[XRP_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_ImageFileName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRP_ManualDefaultRate] [bit] NULL,
[XRP_ValueDefault] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductMaster] ADD CONSTRAINT [PK_iO_Control_ProductMaster] PRIMARY KEY CLUSTERED  ([XRP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMaster_6_2035538335__K34_K38_K20_K21_K31_K35_K37_K1] ON [dbo].[iO_Control_ProductMaster] ([XRP_DateStart], [XRP_IDLink_XRPy], [XRP_TermMax], [XRP_TermMin], [XRP_FixedOrVariable], [XRP_DateEnd], [XRP_IDLink_XRPu], [XRP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMaster_6_2035538335__K31_K38_K20_K34_K21_K35_K37_K1] ON [dbo].[iO_Control_ProductMaster] ([XRP_FixedOrVariable], [XRP_IDLink_XRPy], [XRP_TermMax], [XRP_DateStart], [XRP_TermMin], [XRP_DateEnd], [XRP_IDLink_XRPu], [XRP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMaster_9_2035538335__K1_K14] ON [dbo].[iO_Control_ProductMaster] ([XRP_ID], [XRP_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMaster_6_2035538335__K37_K21_K38_K20_K31_K35_K34] ON [dbo].[iO_Control_ProductMaster] ([XRP_IDLink_XRPu], [XRP_TermMin], [XRP_IDLink_XRPy], [XRP_TermMax], [XRP_FixedOrVariable], [XRP_DateEnd], [XRP_DateStart]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductMaster_6_2035538335__K38_K20_K37_K21_K31_K34_K35] ON [dbo].[iO_Control_ProductMaster] ([XRP_IDLink_XRPy], [XRP_TermMax], [XRP_IDLink_XRPu], [XRP_TermMin], [XRP_FixedOrVariable], [XRP_DateStart], [XRP_DateEnd]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductMaster', 'COLUMN', N'XRP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductMaster', 'COLUMN', N'XRP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductMaster', 'COLUMN', N'XRP_Ownership'
GO
