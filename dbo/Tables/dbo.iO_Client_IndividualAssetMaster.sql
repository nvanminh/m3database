CREATE TABLE [dbo].[iO_Client_IndividualAssetMaster]
(
[CLAm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_IDLink_XASo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_IDUser] [int] NULL,
[CLAm_Type] [int] NULL,
[CLAm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CLAm_Value] [float] NULL,
[CLAm_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_MonthlyIncome] [float] NULL,
[CLAm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAm_CurrentForClient] [int] NULL,
[CLAm_PercentOwned] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualAssetMaster] ADD CONSTRAINT [PK_iO_Client_IndividualAssetMaster] PRIMARY KEY CLUSTERED  ([CLAm_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
