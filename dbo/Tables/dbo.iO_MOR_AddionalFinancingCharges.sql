CREATE TABLE [dbo].[iO_MOR_AddionalFinancingCharges]
(
[MORafc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_LENDERNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_CHARGETYPE] [int] NULL,
[MORafc_LINKEDLOANACCOUNTNUMBER] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_FUTURESTATUS] [int] NULL,
[MORafc_FUNDINGDATE] [smalldatetime] NULL,
[MORafc_PURPOSEOFLOAN] [int] NULL,
[MORafc_INSURERTYPE] [int] NULL,
[MORafc_CERTIFICATENUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORafc_SERVICETYPE] [int] NULL,
[MORafc_PREMIUMAMOUNT] [decimal] (18, 0) NULL,
[MORafc_FEEAMOUNT] [decimal] (18, 0) NULL,
[MORafc_TAXAMOUNT] [decimal] (18, 0) NULL,
[MORafc_ADDTOLOAN] [bit] NULL
) ON [PRIMARY]
GO
