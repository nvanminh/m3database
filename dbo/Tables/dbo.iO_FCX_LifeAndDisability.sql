CREATE TABLE [dbo].[iO_FCX_LifeAndDisability]
(
[FCXld_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXld_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_IDLink_FCXl] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXld_ApplicationDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_CoverTax] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXld_TotalPayment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
