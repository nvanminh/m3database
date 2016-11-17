CREATE TABLE [dbo].[iO_System_AuditEFT]
(
[SYSae_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSae_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSae_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_IDLink_XTRF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSae_Type] [int] NULL,
[SYSae_IDUser] [int] NULL,
[SYSae_Action] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_Date] [datetime] NULL,
[SYSae_Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSae_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_AuditEFT] ADD CONSTRAINT [PK_iO_System_AuditEFT] PRIMARY KEY CLUSTERED  ([SYSae_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
