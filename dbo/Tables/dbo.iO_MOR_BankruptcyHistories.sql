CREATE TABLE [dbo].[iO_MOR_BankruptcyHistories]
(
[MORbkh_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORbkh_AMOUNTOFDEBT] [decimal] (18, 0) NULL,
[MORbkh_DATEDECLARED] [smalldatetime] NULL,
[MORbkh_DATEOFDISCHARGE] [smalldatetime] NULL,
[MORbkh_MONTHLYREPAYMENT] [decimal] (18, 0) NULL,
[MORbkh_OTHERDETAILS] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
