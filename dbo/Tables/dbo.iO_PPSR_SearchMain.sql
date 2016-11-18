CREATE TABLE [dbo].[iO_PPSR_SearchMain]
(
[PPSm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSm_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSm_SearchCreateDate] [datetime] NULL,
[PPSm_SearchExpiry] [datetime] NULL,
[PPSm_SearchNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSm_NumberOfRegistrations] [int] NULL,
[PPSm_LatestRegistration] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_SearchMain] ADD CONSTRAINT [PK__iO_PPSR___105C962AB64679A1] PRIMARY KEY CLUSTERED  ([PPSm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
