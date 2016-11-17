CREATE TABLE [dbo].[iO_MOR_ContactTelephoneNumbers]
(
[MORtn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_USAGE] [int] NULL,
[MORtn_COUNTRYCODE] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_AREACODE] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_TELEPHONENUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORtn_EXTENSIONNUMBER] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
