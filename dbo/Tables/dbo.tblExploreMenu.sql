CREATE TABLE [dbo].[tblExploreMenu]
(
[ImportDate] [datetime] NULL,
[ItemName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemCode] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemOrder] [int] NULL,
[ItemText] [varchar] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExternalText] [varchar] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
