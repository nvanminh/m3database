CREATE TABLE [dbo].[iO_Client_IndividualAssetProperty]
(
[CLAp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAp_IDLink_StreetType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_IDLink_Country] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_IDUser] [int] NULL,
[CLAp_Type] [int] NULL,
[CLAp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CLAp_EstimatedValue] [float] NULL,
[CLAp_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_StreetName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_Direction] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_MonthlyIncome] [float] NULL,
[CLAp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_IDLink_XRTu] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAp_PurchasePrice] [float] NULL,
[CLAp_OriginalPurchasePrice] [float] NULL,
[CLAp_PurchasedDate] [smalldatetime] NULL,
[CLAp_RegisteredProprietor] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualAssetProperty] ADD CONSTRAINT [PK_iO_Client_IndividualAssetProperty] PRIMARY KEY CLUSTERED  ([CLAp_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
