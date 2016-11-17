CREATE TABLE [dbo].[io_AssetMgt_Vehicle]
(
[ASV_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASV_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASV_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_RMR_leasee] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_RSE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_RegState] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_IDLink_NameSupplier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ASV_Type] [int] NULL,
[ASV_IDUser] [int] NULL,
[ASV_Class] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Make] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Model] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Transmission] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Year] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Value_Market] [float] NULL,
[ASV_Value_Rego] [float] NULL,
[ASV_Value_Insurance] [float] NULL,
[ASV_Value_SourcingFee] [float] NULL,
[ASV_Value_Markup] [float] NULL,
[ASV_Value_Total] [float] NULL,
[ASV_Value_Weekly_rental] [float] NULL,
[ASV_Colour_External] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Colour_Internal] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_EngineNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_RegNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_VinNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_BodyType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_FuelType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_QuoteValue] [float] NULL,
[ASV_CurrentMarketValue] [float] NULL,
[ASV_Value_Purchase] [float] NULL,
[ASV_Date_purchase] [datetime] NULL,
[ASV_Date_Rego] [datetime] NULL,
[ASV_SaleValue] [float] NULL,
[ASV_WeightGross] [float] NULL,
[ASV_EngineSize] [float] NULL,
[ASV_EngineCylinders] [float] NULL,
[ASV_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_GlassesValue] [float] NULL,
[ASV_Odometer] [float] NULL,
[ASV_TypeOfSecurity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_PPSR_Number] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_PPSR_RegNumber] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_PPSR_Expirydate] [datetime] NULL,
[ASV_Term_Months] [int] NULL,
[ASV_IDLink_NameProcurement] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASV_Value_supplier] [float] NULL,
[ASV_Value_procurement] [float] NULL,
[ASV_Value_additionalCosts] [float] NULL,
[ASV_IDlink_Frequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_AssetMgt_Vehicle] ADD CONSTRAINT [PK_io_AssetMgt_Vehicle] PRIMARY KEY CLUSTERED  ([ASV_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgt_Vehicle', 'COLUMN', N'ASV_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgt_Vehicle', 'COLUMN', N'ASV_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgt_Vehicle', 'COLUMN', N'ASV_Ownership'
GO
