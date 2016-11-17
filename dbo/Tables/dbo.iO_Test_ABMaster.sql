CREATE TABLE [dbo].[iO_Test_ABMaster]
(
[TSTabm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTabm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabm_SeqNumber] [int] NULL,
[TSTabm_FileLocation] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTabm_TotalDeals] [int] NULL,
[TSTabm_StartTime] [datetime] NULL,
[TSTabm_EndTime] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_ABMaster] ADD CONSTRAINT [PK_iO_Test_ABMaster] PRIMARY KEY CLUSTERED  ([TSTabm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
