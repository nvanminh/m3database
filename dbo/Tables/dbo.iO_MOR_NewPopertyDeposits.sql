CREATE TABLE [dbo].[iO_MOR_NewPopertyDeposits]
(
[MORnpd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORnpd_SOURCEOFFUNDING] [int] NULL,
[MORnpd_AMOUNT] [decimal] (18, 0) NULL
) ON [PRIMARY]
GO
