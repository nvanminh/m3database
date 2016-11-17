CREATE TABLE [dbo].[iO_DNB_ResponseDirectorship]
(
[DNBd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_SeqNumber] [bigint] NULL,
[DNBd_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CompanyNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DetailsType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DUNSNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CompanyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CompanyStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DateAppointed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DateCeased] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_ExtractDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DataSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseDirectorship] ADD CONSTRAINT [PK_iO_DNB_ResponseDirectorship] PRIMARY KEY CLUSTERED  ([DNBd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
