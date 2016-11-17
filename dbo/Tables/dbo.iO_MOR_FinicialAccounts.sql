CREATE TABLE [dbo].[iO_MOR_FinicialAccounts]
(
[MORfa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_IDLink_MORreq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_ACCOUNTHOLDERNAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_ACCOUNTNUMBER] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_PROPOSEDPAYMENTMETHOD] [int] NULL,
[MORfa_REPAYMENTBANKACCOUNTINDICATOR] [bit] NULL,
[MORfa_TIMEATBANK] [tinyint] NULL,
[MORfa_INSTITUTIONNUMBER] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_TRANSITNUMBER] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_BANKNAME] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORfa_BRANCHNAME] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
