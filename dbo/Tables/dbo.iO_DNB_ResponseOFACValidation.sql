CREATE TABLE [dbo].[iO_DNB_ResponseOFACValidation]
(
[DNBofac_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBofac_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_SeqNumber] [bigint] NULL,
[DNBofac_ExactFullName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_CheckedName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_MatchSDNType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_EntNum] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_Address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_Program] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_AdditionalInfo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_AlternateName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_AlternateNameType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_AlternateNameRemarks] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBofac_SDNType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseOFACValidation] ADD CONSTRAINT [PK_iO_DNB_ResponseOFACValidation] PRIMARY KEY CLUSTERED  ([DNBofac_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
