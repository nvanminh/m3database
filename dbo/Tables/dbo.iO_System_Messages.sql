CREATE TABLE [dbo].[iO_System_Messages]
(
[SYSmg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSmg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSmg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_IDLink_CMR_From] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_IDLink_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSmg_SeqNo] [int] NULL,
[SYSmg_Action] [int] NULL,
[SYSmg_IDUser] [int] NULL,
[SYSmg_Type] [int] NULL,
[SYSmg_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_MessageDate] [datetime] NULL,
[SYSmg_MailID] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_Attachments] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_AdditionalRecipients] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSmg_Unread] [bit] NULL,
[SYSmg_Outgoing] [bit] NULL,
[SYSmg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_Messages] ADD CONSTRAINT [PK_iO_System_Messages] PRIMARY KEY CLUSTERED  ([SYSmg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Messages', 'COLUMN', N'SYSmg_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Messages', 'COLUMN', N'SYSmg_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Messages', 'COLUMN', N'SYSmg_Ownership'
GO
