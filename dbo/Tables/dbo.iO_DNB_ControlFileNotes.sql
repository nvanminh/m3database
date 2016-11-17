CREATE TABLE [dbo].[iO_DNB_ControlFileNotes]
(
[DNBcfn_ID] [bigint] NOT NULL,
[DNBcfn_Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBcfn_Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBcfn_Meaning] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBcfn_RecommendedAction] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ControlFileNotes] ADD CONSTRAINT [PK_iO_DNB_ControlFileNotes] PRIMARY KEY CLUSTERED  ([DNBcfn_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
