CREATE TABLE [dbo].[iO_PPSR_RequestCert]
(
[PPSrc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrc_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrc_RequestedDate] [datetime] NULL,
[PPSrc_ExpiryDate] [datetime] NULL,
[PPSrc_SearchCertificateNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrc_ProcessedDate] [datetime] NULL,
[PPSrc_LatestRegistration] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_RequestCert] ADD CONSTRAINT [PK__iO_PPSR___107E0136C7B91EFF] PRIMARY KEY CLUSTERED  ([PPSrc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
