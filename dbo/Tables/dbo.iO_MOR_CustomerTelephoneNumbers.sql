CREATE TABLE [dbo].[iO_MOR_CustomerTelephoneNumbers]
(
[MORctn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_COUNTRYCODE] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_AREACODE] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_TELEPHONENUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_USAGE] [int] NULL,
[MORctn_CONTACTTIME] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORctn_EXTENSIONNUMBER] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
