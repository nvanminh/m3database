CREATE TABLE [dbo].[iO_System_LogMaster]
(
[SYSlm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSlm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_IDLink_XSYSlog] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_TimeStamp] [datetime] NULL,
[SYSlm_IDLink_ActiveDirectory] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSlm_SeqNumber] [bigint] NULL,
[SYSlm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_LogMaster] ADD CONSTRAINT [PK_iO_System_LogMaster] PRIMARY KEY CLUSTERED  ([SYSlm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
