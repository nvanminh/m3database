CREATE TABLE [dbo].[iO_Test_Component]
(
[TSTc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTc_SeqNumber] [bigint] NULL,
[TSTc_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTc_GUID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTc_ExecuteTests] [bit] NULL,
[TSTc_DateLastExecuted] [datetime] NULL,
[TSTc_ObjectType] [int] NULL,
[TSTc_Folder] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_Component] ADD CONSTRAINT [PK_iO_Test_Component] PRIMARY KEY CLUSTERED  ([TSTc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
