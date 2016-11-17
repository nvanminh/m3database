CREATE TABLE [dbo].[iO_Document_AreaPackage]
(
[DPK_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DPK_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DPK_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_IDLink_DMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DPK_IDUser] [int] NULL,
[DPK_Type] [int] NULL,
[DPK_FileDisplayExtension] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_Base64Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DPK_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_AreaPackage] ADD CONSTRAINT [PK_iO_Document_AreaPackage] PRIMARY KEY CLUSTERED  ([DPK_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Document_AreaPackage] ON [dbo].[iO_Document_AreaPackage] ([DPK_IDLink_DMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
