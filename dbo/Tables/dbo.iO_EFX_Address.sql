CREATE TABLE [dbo].[iO_EFX_Address]
(
[EFXAdd_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFXAdd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Type] [int] NULL,
[EFXAdd_IDUser] [int] NULL,
[EFXAdd_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[EFXAdd_AddressType_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_AddressType_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_DateReported] [int] NULL,
[EFXAdd_CivicNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_StreetName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_City_description] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_City_code] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Province_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Province_description] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_PostalCode] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Occupancy_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Occupancy_description] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_Date] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAdd_UpdateSource_code] [int] NULL,
[EFXAdd_UpdateSource_description] [int] NULL,
[EFXAdd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_EFX_Address] ADD CONSTRAINT [io_efx_address_PrimaryKey] PRIMARY KEY CLUSTERED  ([EFXAdd_ID]) ON [PRIMARY]
GO
