CREATE TABLE [dbo].[iO_MOR_EarnedIncome]
(
[MORinc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_Ownership] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_Version] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_Sync] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_IDLink_MORemp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MORinc_EARNEDINCOMEAMOUNT] [decimal] (18, 0) NULL,
[MORinc_EARNEDINCOMETYPE] [int] NULL,
[MORinc_PAYMENTFREQUENCY] [int] NULL
) ON [PRIMARY]
GO
