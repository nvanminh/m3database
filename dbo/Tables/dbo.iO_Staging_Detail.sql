CREATE TABLE [dbo].[iO_Staging_Detail]
(
[STD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_SeqNumber] [bigint] NULL,
[STD_IDLink_STM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_OriginatorID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_Password] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_Email] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_StartDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_CompanyID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STD_Status] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Staging_Detail] ADD CONSTRAINT [PK_iO_Staging_Detail] PRIMARY KEY CLUSTERED  ([STD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Staging_Detail_IDLink_STM] ON [dbo].[iO_Staging_Detail] ([STD_IDLink_STM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iX_iO_Staging_Detail_OriginatorID] ON [dbo].[iO_Staging_Detail] ([STD_OriginatorID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
