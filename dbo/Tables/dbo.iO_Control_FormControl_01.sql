CREATE TABLE [dbo].[iO_Control_FormControl_01]
(
[XFRC_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFRC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_SeqNo] [int] NULL,
[XFRC_ControlType] [int] NULL,
[XFRC_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_Parent] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_XML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FormControl_01] ADD CONSTRAINT [io_control_formcontrol_01_PrimaryKey] PRIMARY KEY CLUSTERED  ([XFRC_ID]) ON [PRIMARY]
GO
