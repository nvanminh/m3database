CREATE TABLE [dbo].[iO_Map]
(
[Map_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_IDLink_XMap] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_ValueSrc] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_ValueDst] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Map_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
