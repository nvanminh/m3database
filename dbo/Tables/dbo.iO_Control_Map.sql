CREATE TABLE [dbo].[iO_Control_Map]
(
[XMap_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XMap_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_Detail] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_SeqNumber] [bigint] NULL,
[XMap_Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMap_MaxSize] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Map] ADD CONSTRAINT [iO_Control_Map_PrimaryKey] PRIMARY KEY CLUSTERED  ([XMap_ID]) ON [PRIMARY]
GO
