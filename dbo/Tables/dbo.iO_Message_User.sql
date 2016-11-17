CREATE TABLE [dbo].[iO_Message_User]
(
[MNU_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_SeqNumber] [bigint] NULL,
[MNU_Type] [int] NULL,
[MNU_UnRead] [bit] NULL,
[MNU_IDLink_CMRFrom] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_IDLink_CMRTo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_Date] [datetime] NULL,
[MNU_Title] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Message_User] ADD CONSTRAINT [PK_iO_Message_User] PRIMARY KEY CLUSTERED  ([MNU_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
