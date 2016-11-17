CREATE TABLE [dbo].[iO_MOR_CreditCheckBankruptcyHistories]
(
[MORccbh_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORccbh_AMOUNTOFDEBT] [decimal] (18, 0) NULL,
[MORccbh_DATEDECLARED] [smalldatetime] NULL,
[MORccbh_DATEOFDISCHARGE] [smalldatetime] NULL,
[MORccbh_MONTHLYREPAYMENT] [decimal] (18, 0) NULL,
[MORccbh_OTHERDETAILS] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
