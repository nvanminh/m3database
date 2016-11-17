CREATE TABLE [dbo].[iO_MOR_ApplicationCharges]
(
[MORac_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_LENDERNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_CHARGETYPE] [int] NULL,
[MORac_LINKEDLOANACCOUNTNUMBER] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_FUTURESTATUS] [int] NULL,
[MORac_FUNDINGDATE] [smalldatetime] NULL,
[MORac_PURPOSEOFLOAN] [int] NULL,
[MORac_INSURERTYPE] [int] NULL,
[MORac_CERTIFICATENUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORac_SERVICETYPE] [int] NULL,
[MORac_PREMIUMAMOUNT] [decimal] (18, 0) NULL,
[MORac_FEEAMOUNT] [decimal] (18, 0) NULL,
[MORac_TAXAMOUNT] [decimal] (18, 0) NULL,
[MORac_ADDTOLOAN] [bit] NULL
) ON [PRIMARY]
GO
