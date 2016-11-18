CREATE TABLE [dbo].[iO_PPSR_Faults]
(
[PPSrf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrf_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrf_PPSRB2GProcess] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrf_DateOfError] [datetime] NULL,
[PPSrf_ErrorDesc] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrf_LatestError] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_Faults] ADD CONSTRAINT [PK__iO_PPSR___E395D7AFDD9B37A5] PRIMARY KEY CLUSTERED  ([PPSrf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
