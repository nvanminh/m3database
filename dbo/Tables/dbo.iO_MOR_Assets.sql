CREATE TABLE [dbo].[iO_MOR_Assets]
(
[MORas_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_ASSETTYPE] [int] NULL,
[MORas_LOCATION] [varchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORas_VALUE] [decimal] (18, 0) NULL,
[MORas_MATURITYDATE] [smalldatetime] NULL,
[MORas_ADDITIONALASSETHOLDERS] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
