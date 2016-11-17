CREATE TABLE [dbo].[iO_Product_SecurityVEH_Log]
(
[RSC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_IDLink_RSE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_IDLink_RegState] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_IDLink_NameSupplier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSC_Type] [int] NULL,
[RSC_IDUser] [int] NULL,
[RSC_Class] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_Make] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_Model] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_Transmission] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_Year] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_Value] [float] NULL,
[RSC_Color] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_ColorInternal] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_EngineNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_RegNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_VinNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_BodyType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_FuleType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_QuoteValue] [float] NULL,
[RSC_CurrentMarketValue] [float] NULL,
[RSC_PurchaseValue] [float] NULL,
[RSC_SaleValue] [float] NULL,
[RSC_WeightGross] [float] NULL,
[RSC_EngineSize] [float] NULL,
[RSC_EngineCylinders] [float] NULL,
[RSC_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_GlassesValue] [float] NULL,
[RSC_Odometer] [float] NULL,
[RSC_TypeOfSecurity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_PPSR_Number] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_PPSR_RegNumber] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_PPSR_Expirydate] [datetime] NULL,
[Date Modified] [datetime] NULL,
[User ID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_CertificateDocLink] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_ChassisNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_ManufacturerNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSC_NewVehicle] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityVEH_Log] ADD CONSTRAINT [PK_iO_Product_SecurityVEH_Log] PRIMARY KEY CLUSTERED  ([RSC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEH_Log', 'COLUMN', N'RSC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEH_Log', 'COLUMN', N'RSC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEH_Log', 'COLUMN', N'RSC_Ownership'
GO
