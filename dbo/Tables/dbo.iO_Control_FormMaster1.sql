CREATE TABLE [dbo].[iO_Control_FormMaster1]
(
[XFRM_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFRM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDLink_XSCc] [int] NULL,
[XFRM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDLink_ToForm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDLink_SeqNumber] [bigint] NULL,
[XFRM_PathName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_IDUser] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_Type] [int] NULL,
[XFRM_FormType] [int] NULL,
[XFRM_SeqNo] [int] NULL,
[XFRM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_FormName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_SecurityValue] [int] NULL,
[XFRM_DisplayForm] [bit] NULL,
[XFRM_CommonForm] [bit] NULL,
[XFRM_CommonType] [int] NULL,
[XFRM_BarImage] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFRM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FormMaster1] ADD CONSTRAINT [iO_Control_FormMaster1_PrimaryKey] PRIMARY KEY CLUSTERED  ([XFRM_ID]) ON [PRIMARY]
GO
