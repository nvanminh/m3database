CREATE TABLE [dbo].[iO_Control_FormLink]
(
[XFRL_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFRL_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_SeqNo] [int] NULL,
[XFRL_DisplayType] [int] NULL,
[XFRL_ControlType] [int] NULL,
[XFRL_Name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_XML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRL_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FormLink] ADD CONSTRAINT [PK_iO_Control_FormLink] PRIMARY KEY CLUSTERED  ([XFRL_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FormLink] ON [dbo].[iO_Control_FormLink] ([XFRL_IDLink_XFRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
