CREATE TABLE [dbo].[iO_Service_CallHeaders]
(
[SCH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCH_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCH_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCH_Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Service_CallHeaders] ADD CONSTRAINT [PK_iO_Service_CallHeaders] PRIMARY KEY CLUSTERED  ([SCH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
