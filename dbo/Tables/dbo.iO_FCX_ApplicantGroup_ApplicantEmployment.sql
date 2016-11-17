CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantEmployment]
(
[FCXaae_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaae_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaae_ContactAddress_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_StreetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_StreetDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_InternationalPostcode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_PostalFSA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_POstalLDU] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactEmailAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactSalutation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactMiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactLastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ConatctLanguage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactPreferredContactMethod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_EmployerName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_EmploymentHistoryStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_EmploymentHistoryType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomeAnnualIncomeAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomeAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomeDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomePeriod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomeType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomePercentageInGDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IncomePercentageInTDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_IndustrySector] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_JobTitle] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_MonthsOfService] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_Occupation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_SelfEmploymentCompanyType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_SelfEmploymentGrossRevenue] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_SelfEmploymentOperatingAs] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_TimeInIndustry] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_AddressLine1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_AddressLine2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_internationalPostalCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_postalFsa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_postalLdu] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaae_ContactAddress2_country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
