CREATE TABLE [dbo].[Tables$]
(
[XML_Hierarchy] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XML_Level] [tinyint] NULL,
[TableName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RowPrefix] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentRowGUIDName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NodesName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GuidAttribute] [bit] NULL,
[LevelsBelowParentTable] [tinyint] NULL
) ON [PRIMARY]
GO
