CREATE TABLE [dbo].[iO_GNW_Enumerations]
(
[GNWenum_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GNWenum_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWenum_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWenum_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWenum_SeqNumber] [bigint] NULL,
[GNWenum_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWenum_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWenum_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_GNW_Enumerations] ADD CONSTRAINT [PK_GNW_Enumerations] PRIMARY KEY CLUSTERED  ([GNWenum_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
