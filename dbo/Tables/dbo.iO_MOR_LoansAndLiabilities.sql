CREATE TABLE [dbo].[iO_MOR_LoansAndLiabilities]
(
[MORlal_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_ADDITIONALDETAILS] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_ENDDATE] [smalldatetime] NULL,
[MORlal_LOANACCOUNTNUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_LOANREPAYMENTINDICATOR] [bit] NULL,
[MORlal_MONTHLYREPAYMENT] [decimal] (18, 0) NULL,
[MORlal_TOTALOUTSTANDINGBALANCE] [decimal] (18, 0) NULL,
[MORlal_LENDERNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORlal_CARDTYPE] [int] NULL,
[MORlal_AGREEMENTTYPE] [int] NULL,
[MORlal_INCLUDEINTDS] [bit] NULL,
[MORlal_MODIFYFROMBUREAUIND] [bit] NULL,
[MORlal_MODIFICATIONNOTES] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
