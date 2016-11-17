CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantAddress]
(
[FCXaaa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaaa_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaaa_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_StreetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_StreetDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_InternationalPostcode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_PostalFSA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_PostalLDU] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_AddressType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_MonthsAtAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_ResidentialStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaa_RentPaymentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
