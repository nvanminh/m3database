CREATE TABLE [dbo].[iO_Test_MappingReportItem]
(
[TSTmri_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTmri_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmri_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmri_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmri_IDLink_TSTmrd] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmri_SeqNumber] [bigint] NULL,
[TSTmri_SourceValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmri_DestinationValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_MappingReportItem] ADD CONSTRAINT [PK_iO_Test_MappingReportItem] PRIMARY KEY CLUSTERED  ([TSTmri_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
