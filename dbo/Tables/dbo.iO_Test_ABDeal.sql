CREATE TABLE [dbo].[iO_Test_ABDeal]
(
[TSTabd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_SeqNumber] [int] NULL,
[TSTabd_IDLink_TSTabm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_StartTime] [datetime] NULL,
[TSTabd_EndTime] [datetime] NULL,
[TSTabd_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_FileLocation] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_DealReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabd_Dependency] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
