CREATE TABLE [dbo].[iO_Client_IndividualSelfEmployed]
(
[CSEp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSEp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSEp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_CED] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_XCB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_XCI] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_StreetType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_IDLink_Country] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_TradingName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_AccountantFirmName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_AccountantContactName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_TimeInServiceY] [int] NULL,
[CSEp_TimeInServiceM] [int] NULL,
[CSEp_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_StreetName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CSEp_Type] [int] NULL,
[CSEp_IDUser] [int] NULL,
[CSEp_NatureOfBusiness] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_CompanyACN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_FinancialProfit1] [float] NULL,
[CSEp_FinancialProfit2] [float] NULL,
[CSEp_FinancialYear1] [int] NULL,
[CSEp_FinancialYear2] [int] NULL,
[CSEp_FinancialType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSEp_FinancialOther] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualSelfEmployed] ADD CONSTRAINT [PK_iO_Client_IndividualSelfEmployed] PRIMARY KEY CLUSTERED  ([CSEp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualSelfEmployed', 'COLUMN', N'CSEp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualSelfEmployed', 'COLUMN', N'CSEp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualSelfEmployed', 'COLUMN', N'CSEp_Ownership'
GO
