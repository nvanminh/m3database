CREATE TABLE [dbo].[iO_Client_TypeCompany]
(
[CTC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_XCI] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_XCB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_XCCe] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CTC_IDUser] [int] NULL,
[CTC_Type] [int] NULL,
[CTC_CompanyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_TradingAs] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_TrusteeName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_PrincipalActivity] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_TrustDate] [datetime] NULL,
[CTC_CompanyACN] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_CompanyABN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_Class] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_DateInc] [datetime] NULL,
[CTC_TimeInOperationY] [int] NULL,
[CTC_TimeInOperationM] [int] NULL,
[CTC_VedaRegistrationNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_FCX_FirmCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_FCX_LicenceRegNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_IDLink_Country] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_Trustee_Corporate_01] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_Trustee_Person_01] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_Trustee_Person_02] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_EntityType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTC_EnvironmentalReport] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_TypeCompany] ADD CONSTRAINT [PK_iO_Client_TypeCompany] PRIMARY KEY CLUSTERED  ([CTC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_TypeCompany] ON [dbo].[iO_Client_TypeCompany] ([CTC_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeCompany', 'COLUMN', N'CTC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeCompany', 'COLUMN', N'CTC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeCompany', 'COLUMN', N'CTC_Ownership'
GO
