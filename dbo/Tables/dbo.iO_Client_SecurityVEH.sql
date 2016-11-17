CREATE TABLE [dbo].[iO_Client_SecurityVEH]
(
[CSC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_IDLink_RSE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_IDLink_RegState] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_IDLink_NameSupplier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CSC_Type] [int] NULL,
[CSC_IDUser] [int] NULL,
[CSC_Class] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_Make] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_Model] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_Transmission] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_Year] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_Value] [float] NULL,
[CSC_Color] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_ColorInternal] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_EngineNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_RegNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_VinNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_BodyType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_FuleType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_QuoteValue] [float] NULL,
[CSC_CurrentMarketValue] [float] NULL,
[CSC_PurchaseValue] [float] NULL,
[CSC_SaleValue] [float] NULL,
[CSC_WeightGross] [float] NULL,
[CSC_EngineSize] [float] NULL,
[CSC_EngineCylinders] [float] NULL,
[CSC_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSC_CurrentKMS] [int] NULL,
[CSC_UnderFinance] [bit] NULL,
[CSC_Financier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[csc_FinanceAmount] [float] NULL,
[csc_FinanceMonthlyRepayment] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_SecurityVEH] ADD CONSTRAINT [PK_iO_Client_SecurityVEH] PRIMARY KEY CLUSTERED  ([CSC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_SecurityVEH', 'COLUMN', N'CSC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_SecurityVEH', 'COLUMN', N'CSC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_SecurityVEH', 'COLUMN', N'CSC_Ownership'
GO
