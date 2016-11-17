CREATE TABLE [dbo].[iO_MOR_SolicitorTelephoneNumbers]
(
[MORstn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_IDLink_MORsol] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_USAGE] [int] NULL,
[MORstn_COUNTRYCODE] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_AREACODE] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_TELEPHONENUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORstn_EXTENSIONNUMBER] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
