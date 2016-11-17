CREATE TABLE [dbo].[iO_MOR_Solicitors]
(
[MORsol_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_COMPANYNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_POSTALCODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_APTORUNITNUMBER] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_BUILDINGORHOUSENUMBER] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_STREET] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_STREETDIRECTION] [int] NULL,
[MORsol_STREETTYPE] [int] NULL,
[MORsol_RRORPOBOXNUMBER] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_TOWN] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_PROVINCESEQNO] [int] NULL,
[MORsol_COUNTRY] [int] NULL,
[MORsol_TITLE] [int] NULL,
[MORsol_SURNAME] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_FIRSTFORENAME] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORsol_EMAILADDRESS] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
