CREATE TABLE [dbo].[iO_FCX_Deal_DownpaymentSource]
(
[FCXdd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdd_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdd_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_DownPaymentSourceType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdd_Description] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
