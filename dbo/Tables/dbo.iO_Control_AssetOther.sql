CREATE TABLE [dbo].[iO_Control_AssetOther]
(
[XASo_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XASo_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XASo_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XASo_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XASo_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XASo_IDLink_XSCc] [int] NULL,
[XASo_IDUser] [int] NULL,
[XASo_SecurityValue] [int] NULL,
[XASo_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XASo_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XASo_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_AssetOther] ADD CONSTRAINT [PK_iO_Control_AssetOther] PRIMARY KEY CLUSTERED  ([XASo_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AssetOther', 'COLUMN', N'XASo_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AssetOther', 'COLUMN', N'XASo_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AssetOther', 'COLUMN', N'XASo_Ownership'
GO
