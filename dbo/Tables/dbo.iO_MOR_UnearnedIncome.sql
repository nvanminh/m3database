CREATE TABLE [dbo].[iO_MOR_UnearnedIncome]
(
[MORuei_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_IDLink_MORcv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORuei_UNEARNEDINCOMEAMOUNT] [decimal] (18, 0) NULL,
[MORuei_UNEARNEDINCOMETYPE] [int] NULL,
[MORuei_PAYMENTFREQUENCY] [int] NULL
) ON [PRIMARY]
GO
