CREATE TABLE [dbo].[iO_Client_TypeIndividual]
(
[CTI_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTI_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTI_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTI_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_XCO] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_XCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_XCGn] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDLink_CountryBirth] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_IDUser] [int] NULL,
[CTI_Type] [int] NULL,
[CTI_FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_MiddleName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_Surname] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_PreferredName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_DOB] [datetime] NULL,
[CTI_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CTI_Sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_ResidencyStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_NumDependants] [int] NULL,
[CTI_AustralianCitizen] [bit] NULL,
[CTI_AustralianResident] [bit] NULL,
[CTI_TradingAs] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_TimeInOperationY] [int] NULL,
[CTI_TimeInOperationM] [int] NULL,
[CTI_PrincipalActivity] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_NewZealandResident] [bit] NULL,
[CTI_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_Suffix] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXFirmCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXUserType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXFirstTimeBuyer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXPairOrder] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXRelationhipToApplicant] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FCXIndustrySector] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_LegacyOfficeID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_LegacySystem] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_LegacyUserID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_licenceRegNum] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_FirmName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_CurrentlyEmployed] [int] NULL,
[CTI_YearsAtSchool] [int] NULL,
[CTI_AgeDependants] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_MarketingMaterialOptOut] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_BNI] [int] NULL,
[CTI_MaidenName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_SpouseName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_CountryLengthOfStayY] [int] NULL,
[CTI_CountryLengthOfStayM] [int] NULL,
[CTI_NoDependantsU14] [int] NULL,
[CTI_NoDependantsO14] [int] NULL,
[CTI_NoDependantsO18] [int] NULL,
[CTI_NoDependants1418] [int] NULL,
[CTI_TotalExpenditureCommitted] [money] NULL,
[CTI_TotalExpenditureEssential] [money] NULL,
[CTI_TotalExpenditureBasic] [money] NULL,
[CTI_AgeExpectedRetirement] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTI_CountryLengthOfStaySinceBirth] [int] NULL,
[CTI_ProtectedPerson] [int] NULL,
[CTI_AppIncomeInclusion] [decimal] (18, 2) NULL,
[CTI_AppRanking] [smallint] NULL,
[CTI_PropertyPerson] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_TypeIndividual] ADD CONSTRAINT [PK_iO_Client_TypeIndividual] PRIMARY KEY CLUSTERED  ([CTI_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Client_TypeIndivludial] ON [dbo].[iO_Client_TypeIndividual] ([CTI_IDLink_CMR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_TypeIndividual] ON [dbo].[iO_Client_TypeIndividual] ([CTI_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeIndividual', 'COLUMN', N'CTI_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeIndividual', 'COLUMN', N'CTI_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeIndividual', 'COLUMN', N'CTI_Ownership'
GO
