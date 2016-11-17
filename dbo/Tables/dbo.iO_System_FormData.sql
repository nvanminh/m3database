CREATE TABLE [dbo].[iO_System_FormData]
(
[SYSfd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_XFRC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_Session] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfd_Type] [int] NULL,
[SYSfd_IDUser] [int] NULL,
[SYSfd_ControlName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_ControlValue] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FormData] ADD CONSTRAINT [PK__iO_System_FormDa__2D9297B4] PRIMARY KEY CLUSTERED  ([SYSfd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
